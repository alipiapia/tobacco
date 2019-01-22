/**
 * layui 分页封装
 * @param total
 * @param cur_page
 * @param url_string
 *
 * @author 雲溪荏苒
 * @date 2017-09-27
 */
function lay_page (total, cur_page, url_string, page_size) {
    // 设置默认每页数量为 10
    if (typeof page_size == 'undefined' || page_size == 0) {
        page_size = 10;
    }
    layui.use(['laypage', 'layer'], function() {
        var laypage = layui.laypage
            , layer = layui.layer;

        laypage.render({
            elem: 'page'
            ,count: total
            ,curr: cur_page
            ,limit: page_size
            ,layout: ['count', 'prev', 'page', 'next', /*'limit',*/ 'skip']
            ,jump: function(obj, first){
                if(!first){
                    window.location.href = url_string + 'curpage=' + obj.curr;
                }
            }
        });
    });
}

function ajax_lay_page(total, cur_page) {
    // layui.use(['laypage', 'layer'], function() {
    //     var laypage = layui.laypage
    //         , layer = layui.layer;
    //
    //     laypage.render({
    //         elem: 'page'
    //         ,count: total
    //         ,curr: cur_page
    //         ,limit: 2
    //         ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
    //         ,jump: function(obj, first){
    //             // if(!first){
    //             //     window.location.href = url_string + 'curpage=' + obj.curr;
    //             // }
    //             $.post("/hospital/Hospital/ajax_get_doctor",{dep_id:dep_id, hid:h_id, curpage:curpage },function(result){
    //                 $(".doctor-list-container").html(result.data);
    //             });
    //         }
    //     });
    // });
}