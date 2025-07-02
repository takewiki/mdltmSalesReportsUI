#' 月销售额生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' shipmentAmountWeeklyUI()
shipmentAmountWeeklyUI <- function(tabTitle ='月销售额',
                                  colTitles =c('操作区域','操作区域','显示区域'),
                                  widthRates =c(6,6,12),
                                  func_left = shipmentAmountWeeklyUI_left,
                                  func_right =shipmentAmountWeeklyUI_right,
                                  func_bottom = shipmentAmountWeeklyUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' shipmentAmountWeeklyUI_left()
shipmentAmountWeeklyUI_left <- function() {


  res <- tagList(
    tsui::mdl_numeric(id = 'text_numeric_shipmentAmountWeekly_select',label = '查询年份',value = 2024),

    shiny::actionButton(inputId = 'btn_shipmentAmountWeekly_view',label = '查询当年报表'),

    tsui::mdl_download_button(id = 'dl_shipmentAmountWeekly_report',label = '下载月销售额报表')




  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' shipmentAmountWeeklyUI_bottom()
shipmentAmountWeeklyUI_right <- function() {
  res <- tagList(





  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' shipmentAmountWeeklyUI_bottom()
shipmentAmountWeeklyUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'shipmentAmountWeekly_resultView',label ='结果显示' ))

  )
  return(res)

}
