/**
 * 添加自定义图片上传组件
 */
CKEDITOR.plugins.add('MultipleImageUpload',{//调用add方法添加插件
    init : function (editor) { //初始化页面时调用方法，接收一个富文本对象实例
        var pluginName = 'MultipleImageUpload'; //插件名
        var _file = document.getElementById('editFileInput'); //获取页面中的file文件选择器对象
        /**
         * 添加执行命令
         */
        editor.addCommand('openFileComm', {//添加命令
            exec : function (editor) {//命令调用时执行此函数
                _file.click(); //触发文件选择器的点击事件
                _file.onchange = function(){//为文件选择器独享绑定onchange方法
                    console.log("_file is changed");
						var val=$("#photoCover").val();
						val=$.trim(val);
						if (val!="") {
						upload();//执行函数
	                    function upload(){
                        var file = new FormData($("#editorImageForm")[0]);//获取文件表单中的文件对象
	                        var element = CKEDITOR.dom.element.createFromHtml( '<img style="width: 100%;" src="'+ "img/"+val +'" border="0" />' );//上传成功后添加上传完成的图片元素到富文本内容中
	                        editor.insertElement( element );//插入元素                        
	                     }
					}   else{
                            console.log("null");
                        }
                };
            },
            async : true
        });

        editor.ui.addButton && editor.ui.addButton(pluginName, { //添加一个上传图片的按钮
            label: '多图片上传',//按钮提示名
            command: 'openFileComm',//当按钮被点击时执行上面定义好的命令
            /**
             * 添加自定义按钮图片
             */
            icon: this.path + 'images/image.png'
        });
    },

    /*onLoad : function(){
        alert('onload');
        console.log(this);
    }*/
});