#' 每日发货金额生成生成器界面
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
#' shipmentAmountDailyUI()
shipmentAmountDailyUI <- function(tabTitle ='每日发货金额',
                       colTitles =c('操作区域','操作区域','显示区域'),
                       widthRates =c(6,6,12),
                       func_left = shipmentAmountDailyUI_left,
                       func_right =shipmentAmountDailyUI_right,
                       func_bottom = shipmentAmountDailyUI_bottom
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
#' shipmentAmountDailyUI_left()
shipmentAmountDailyUI_left <- function() {


  res <- tagList(
    tsui::uiTemplate(templateName = '每日发货金额0单价维护表模板'),

    tsui::mdl_file(id ='text_flie_shipmentAmountDaily_price' ,label ='上传文件' ),
    shiny::actionButton(inputId = 'btn_shipmentAmountDaily_Up',label = '上传单价维护表'),
    shiny::actionButton(inputId = 'btn_shipmentAmountDaily_price_view',label = '查询已上传单价维护表'),
    tsui::mdl_download_button(id = 'dl_shipmentAmountDaily_price',label = '下载已上传单价数据'),
    shiny::actionButton(inputId = 'btn_shipmentAmountDaily_select',label = '查询单价为0记录'),
    tsui::mdl_download_button(id = 'dl_shipmentAmountDaily_reportPrice',label = '下载单价为0记录至EXCEL')








  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' shipmentAmountDailyUI_bottom()
shipmentAmountDailyUI_right <- function() {
  res <- tagList(

    tsui::mdl_date(id = 'text_date_shipmentAmountDaily_select',label = '查询月份'),

    shiny::actionButton(inputId = 'btn_shipmentAmountDaily_view',label = '查询当月报表'),

    tsui::mdl_download_button(id = 'dl_shipmentAmountDaily_report',label = '下载每日发货金额报表')




  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' shipmentAmountDailyUI_bottom()
shipmentAmountDailyUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'shipmentAmountDaily_resultView',label ='结果显示' ))

  )
  return(res)

}
