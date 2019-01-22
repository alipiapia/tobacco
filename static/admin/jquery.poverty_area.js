$(document).ready(function(){

    // 自动保存地区信息ajax
    window.form.render();
    $('input.title-input').on('blur', function () {

        $.form.load('admin/Alleviation/save', {name: this.name, value: this.value}, 'POST', function (ret) {
            return false;
        });
    });

    //列表下拉
    $('img[nc_type="flex"]').click(function(){
        var status = $(this).attr('status'); //open OR close
        // var spm = $('#spm').val();
        if(status == 'open'){
            var pr = $(this).parent('td').parent('tr');
            var id = $(this).attr('fieldid');
            var obj = $(this);
            $(this).attr('status','none');
            //ajax
            $.ajax({
                url: '/admin/Alleviation/ajaxGetArea?act=fp_area&op=fp_area&ajax=1&pid='+id,
                dataType: 'json',
                success: function(data){
                    var src='';
                    for(var i = 0; i < data.length; i++){
                        var tmp_vertline = "<img class='preimg' src='static/admin/theme/default/img/vertline.gif'/>";
                        var add_url = data[i].add_url;
                        var edit_url = data[i].edit_url;
                        var delete_url = data[i].delete_url;
                        //不存在大区时值为0
                        if (data[i].area_region === undefined){
                            data[i].area_region = 0;
                        }
                        src += "<tr class='row"+id+"'>";
                        src +="<td><input class='list-check-box' value='"+data[i].ids+"' type='checkbox'/>";
                        //图片
                        if(data[i].have_child == 1){
                            src += " <img fieldid='"+data[i].id+"' status='open' nc_type='flex' src='static/admin/theme/default/img/tv-expandable.gif' />";
                        }else{
                            src += " <img fieldid='"+data[i].id+"' status='none' nc_type='flex' src='static/admin/theme/default/img/tv-item.gif' />";
                        }
                        src += "</td><td class='list-table-sort-td'>";
                        //地区ID
                        src += "<input class='list-sort-input title-input' name='id" + data[i].id + "' value="+ data[i].id +" readonly/>";
                        //名称
                        src += "<td class='text-center nowrap'>";
                        for(var tmp_i=1; tmp_i < (data[i].area_deep-1); tmp_i++){
                            src += tmp_vertline;
                        }
                        if(data[i].have_child == 1){
                            src += " <img fieldid='"+data[i].id+"' status='open' nc_type='flex' src='static/admin/theme/default/img/tv-item1.gif' />";
                        }else{
                            src += " <img fieldid='"+data[i].id+"' status='none' nc_type='flex' src='static/admin/theme/default/img/tv-expandable1.gif' />";
                        }
                        src += "<input class='layui-input layui-input-inline title-input' style='height:28px;line-height:28px;width:auto' name='area_name."+data[i].id+"' value='"+data[i]['poverty_area']+"' />";
                        src += "</td>";
                        //上级地区ID
                        src += "<td class='text-center nowrap'>";
                        for(var tmp_i=1; tmp_i < (data[i].deep-1); tmp_i++){
                            src += tmp_vertline;
                        }
                        src += "<input class='layui-input layui-input-inline title-input' style='height:28px;line-height:28px;width:auto' name='pud."+data[i].pid+"' value='"+data[i].pid+"' readonly/>";
                        src += "</td>";
                        // 是否开启
                        src += "<td class='text-center nowrap'>";
                        if (data[i].is_poverty == 0) {
                            src += "<span style=\"color:#090\">未脱贫</span>";
                        }else {
                            src += "<span>已脱贫</span>";
                        }
                        src += "</td>";

                        //操作
                        src += "<td class='text-center nowrap'>";
                        src += "<div class='layui-btn-group'>";
                        if(data[i].auth_close && data[i].is_poverty == 0) {
                            src += "<button type='button' data-update='" + data[i].id + "' data-field='is_poverty' data-value='1' data-action='" + data[i].close_url + "' class='layui-btn layui-btn-primary layui-btn-small'>未脱贫</button>";

                        }else if(data[i].auth_open) {
                            src += "<button type='button' data-update='" + data[i].id + "' data-field='is_poverty' data-value='0' data-action='" + data[i].open_url + "' class='layui-btn layui-btn-primary layui-btn-small'>已脱贫</button>";
                        }
                        // if(data[i].auth_add && data[i].have_child == 1) {
                        if(data[i].auth_add) {
                            src += "<button type='button' data-modal='" + add_url + "' class='layui-btn layui-btn-primary layui-btn-small'>新增下级</button>";
                        }
                        if(data[i].auth_edit) {
                            src += "<button type='button' data-modal='" + edit_url + "' class='layui-btn layui-btn-primary layui-btn-small'><i class='layui-icon'></i></button>";
                        }
                        if(data[i].auth_del) {
                            src += "<button type='button' data-update='" + data[i].id + "' data-field='delete' data-action='" + delete_url + "' class='layui-btn layui-btn-primary layui-btn-small'><i class='layui-icon'></i></button>";
                        }
                        src += "</div>";
                        src += "</td>";
                        src += "</tr>";
                    }
                    //插入
                    pr.after(src);
                    obj.attr('status','close');
                    obj.attr('src',obj.attr('src').replace("tv-expandable","tv-collapsable"));
                    $('img[nc_type="flex"]').unbind('click');
                    $('.title-input').unbind('click');
                    //重现初始化页面
                    $.getScript("static/admin/jquery.poverty_area.js");
                },
                error: function(){
                    // alert('获取信息失败');
                    layer.msg('获取信息失败', {time : 1000});
                    throw '0';
                }
            });
        }
        if(status == 'close'){
            $(".row"+$(this).attr('fieldid')).remove();
            $(this).attr('src',$(this).attr('src').replace("tv-collapsable","tv-expandable"));
            $(this).attr('status','open');
        }
    })

});