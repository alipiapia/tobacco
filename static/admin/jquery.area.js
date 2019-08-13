$(document).ready(function(){

	// 自动保存地区信息ajax
    window.form.render();
    $('input.title-input').on('blur', function () {

        $.form.load('admin/area/save', {name: this.name, value: this.value}, 'POST', function (ret) {
            return false;
        });
    });

	//列表下拉
	$('img[nc_type="flex"]').click(function(){

		var status = $(this).attr('status');
		var spm = $('#spm').val();
		if(status == 'open'){
			var pr = $(this).parent('td').parent('tr');
			var id = $(this).attr('fieldid');
			var obj = $(this);
			$(this).attr('status','none');
			//ajax
			$.ajax({
				url: '/admin/Area/ajaxGetArea?act=area&op=area&ajax=1&area_parent_id='+id,
				dataType: 'json',
				success: function(data){
					// console.log(data);
					var src='';
					for(var i = 0; i < data.length; i++){
						var tmp_vertline = "<img class='preimg' src='static/admin/theme/default/img/vertline.gif'/>";
						var add_url = data[i].add_url;
                        var edit_url = data[i].edit_url;
                        var delete_url = data[i].delete_url;

                        // src += "<tr class='row"+data[i].area_id+"'>";
                        src += "<tr class='row"+id+"'>";
                        // src += "<tr class='"+pr.attr('class')+" row"+data[i].area_id+"'>";

                        // src += "<td><input class='list-check-box' value='"+data[i].area_id+"' lay-skin='primary' type='checkbox'>";
                        src +="<td><input class='list-check-box' value='"+data[i].ids+"' type='checkbox'/>";
                        // src += "<td class='w36'><input type='checkbox' name='check_area_id[]' value='"+data[i].area_id+"' class='checkitem'>";


						//图片
						if(data[i].have_child == 1){
							src += " <img fieldid='"+data[i].area_id+"' status='open' nc_type='flex' src='static/admin/theme/default/img/tv-expandable.gif' />";
						}else{
							src += " <img fieldid='"+data[i].area_id+"' status='none' nc_type='flex' src='static/admin/theme/default/img/tv-item.gif' />";
						}
						src += "</td><td class='list-table-sort-td'>";
						//排序
						// src += " <span title='可编辑下级分类排序' ajax_branch='area_sort' datatype='number' fieldid='"+data[i].area_id+"' fieldname='area_sort' nc_type='inline_edit' class='editable'>"+data[i].area_sort+"</span></td>";
						src += "<input class='list-sort-input title-input' name='area_sort." + data[i].area_sort + "' value="+ data[i].area_sort +" />";
						//名称
						src += "<td class='text-center nowrap'>";
						
						for(var tmp_i=1; tmp_i < (data[i].area_deep-1); tmp_i++){
							src += tmp_vertline;
						}
						if(data[i].have_child == 1){
							src += " <img fieldid='"+data[i].area_id+"' status='open' nc_type='flex' src='static/admin/theme/default/img/tv-item1.gif' />";
						}else{
							src += " <img fieldid='"+data[i].area_id+"' status='none' nc_type='flex' src='static/admin/theme/default/img/tv-expandable1.gif' />";
						}
						// src += " <span title='可编辑下级分类名称' required='1' fieldid='"+data[i].area_id+"' ajax_branch='area_name' fieldname='area_name' nc_type='inline_edit' class='editable'>"+data[i].area_name+"</span>";
						src += "<input class='layui-input layui-input-inline title-input' style='height:28px;line-height:28px;width:auto' name='area_name."+data[i].area_id+"' value='"+data[i].area_name+"' />";
						src += "</td>";

						//大区名称
						// src += "<td class='text-center nowrap'>";
						
						// for(var tmp_i=1; tmp_i < (data[i].deep-1); tmp_i++){
						// 	src += tmp_vertline;
						// }
						// // src += " <span title='可编辑下级分类名称' required='1' fieldid='"+data[i].area_id+"' ajax_branch='area_region' fieldname='area_region' nc_type='inline_edit' class='editable'>"+data[i].area_region+"</span>";
      //                   src += "<input class='layui-input layui-input-inline title-input' style='height:28px;line-height:28px;width:auto' name='area_region."+data[i].area_id+"' value='"+data[i].area_region+"' />";
      //                   src += "</td>";

                        // 是否开启
                        src += "<td class='text-center nowrap'>";
                        if (data[i].area_open == 1) {
                            src += "<span style=\"color:#090\">已开启</span>";
                        }else {
                        	src += "<span>已关闭</span>";
						}
                        src += "</td>";

						//操作
						src += "<td class='text-center nowrap'>";

						// src += "<a href='javascript:;' onclick='window.location.url=" + add_url + "'>新增下级</a>";
						// src += " | <a href='index.php?act=area&op=area_edit&area_id="+data[i].area_id+"'>编辑</a>";
						// src += " | <a href=\"javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=area&op=area_del&area_id="+data[i].area_id+"';\">删除</a>";
                        src += "<div class='layui-btn-group'>";
                        if(data[i].auth_close && data[i].area_open == 1) {
                            src += "<button type='button' data-update='" + data[i].area_id + "' data-field='area_open' data-value='0' data-action='" + data[i].close_url + "' class='layui-btn layui-btn-primary layui-btn-small'>关闭</button>";

                        }else if(data[i].auth_open) {
                            src += "<button type='button' data-update='" + data[i].area_id + "' data-field='area_open' data-value='1' data-action='" + data[i].open_url + "' class='layui-btn layui-btn-primary layui-btn-small'>开启</button>";
                        }
                        if(data[i].auth_add && data[i].area_deep > 0 && data[i].area_deep < 3) {
                            src += "<button type='button' data-modal='" + add_url + "' class='layui-btn layui-btn-primary layui-btn-small'>新增下级</button>";
                        }
                        if(data[i].auth_edit) {
                            src += "<button type='button' data-modal='" + edit_url + "' class='layui-btn layui-btn-primary layui-btn-small'><i class='layui-icon'></i></button>";

                        }
                        if(data[i].auth_del) {
                            src += "<button type='button' data-update='" + data[i].area_id + "' data-field='delete' data-action='" + delete_url + "' class='layui-btn layui-btn-primary layui-btn-small'><i class='layui-icon'></i></button>";
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
                    // $.getScript("static/admin/jquery.edit.js");
					$.getScript("static/admin/jquery.area.js");

					// $.getScript("static/admin/admincp.js");
				},
				error: function(){
					alert('获取信息失败');
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