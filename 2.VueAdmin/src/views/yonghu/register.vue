<template>
	<div>
		<div class="register_view">
			<el-form :model="registerForm" class="register_form">
				<div class="title_view">{{projectName}}注册</div>
				<div class="list_item">
					<div class="list_label">账号：</div>
					<el-input class="list_inp"
						 v-model="registerForm.zhanghao" 
						 placeholder="请输入账号"
						 type="text"
						/>
				</div>
				<div class="list_item">
					<div class="list_label">密码：</div>
					<el-input class="list_inp"
						 v-model="registerForm.mima" 
						 placeholder="请输入密码"
						 type="password"
						 />
				</div>
				<div class="list_item">
					<div class="list_label">确认密码：</div>
					<el-input class="list_inp" v-model="registerForm.mima2" type="password" placeholder="请输入确认密码" />
				</div>
				<div class="list_item">
					<div class="list_label">用户姓名：</div>
					<el-input class="list_inp"
						 v-model="registerForm.yonghuxingming" 
						 placeholder="请输入用户姓名"
						 type="text"
						/>
				</div>
				<div class="list_item">
					<div class="list_label">性别：</div>
					<el-select 
						class="list_sel"
						v-model="registerForm.xingbie" 
						placeholder="请选择性别"
						>
						<el-option v-for="item in yonghuxingbieLists" :label="item" :value="item"></el-option>
					</el-select>
				</div>

				<div class="list_item">
					<div class="list_label">手机：</div>
					<el-input class="list_inp"
						 v-model="registerForm.shouji" 
						 placeholder="请输入手机"
						 type="text"
						/>
				</div>
				<div class="list_item">
					<div class="list_label">用户地址：</div>
					<el-input class="list_inp"
						 v-model="registerForm.yonghudizhi" 
						 placeholder="请输入用户地址"
						 type="text"
						/>
				</div>
				<div class="list_item">
					<div class="list_label">头像：</div>
					<div :style='{"width":"100%","margin":"0 0 0 0px","flex":"1"}' class="list_file_list">
						<uploads
							action="file/upload" 
							tip="请上传头像" 
							:limit="3"
							:fileUrls="registerForm.touxiang?registerForm.touxiang:''" 
							@change="touxiangUploadSuccess">
						</uploads>
					</div>
				</div>
				<div class="list_btn">
					<el-button class="register" type="success" @click="handleRegister">注册</el-button>
					<div class="r-login" @click="close">已有账号，直接登录</div>
				</div>
			</el-form>
		</div>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context?.$project.projectName
	//获取注册类型
	import { useRoute } from 'vue-router';
	const route = useRoute()
	const tableName = ref('yonghu')
	
	//公共方法
	const getUUID=()=> {
		return new Date().getTime();
	}
	const registerForm = ref({
        xingbie: '',
	})
	const yonghuxingbieLists = ref([])
	const init=()=>{
		yonghuxingbieLists.value = "男,女".split(',')
	}
    const touxiangUploadSuccess=(fileUrls)=> {
        registerForm.value.touxiang = fileUrls;
    }
	// 多级联动参数
	//注册按钮
	const handleRegister = () => {
		let url = tableName.value +"/register";
		if((!registerForm.value.zhanghao)){
			context?.$toolUtil.message(`账号不能为空`,'error')
			return false
		}
		if((!registerForm.value.mima)){
			context?.$toolUtil.message(`密码不能为空`,'error')
			return false
		}
		if(registerForm.value.mima!=registerForm.value.mima2){
			context?.$toolUtil.message('两次密码输入不一致','error')
			return false
		}
		if((!registerForm.value.yonghuxingming)){
			context?.$toolUtil.message(`用户姓名不能为空`,'error')
			return false
		}
		if((!registerForm.value.shouji)){
			context?.$toolUtil.message(`手机不能为空`,'error')
			return false
		}
		if(registerForm.value.shouji&&(!context?.$toolUtil.isMobile(registerForm.value.shouji))){
			context?.$toolUtil.message(`手机应输入手机格式`,'error')
			return false
		}
		if((!registerForm.value.yonghudizhi)){
			context?.$toolUtil.message(`用户地址不能为空`,'error')
			return false
		}
		if(registerForm.value.touxiang!=null){
			registerForm.value.touxiang = registerForm.value.touxiang.replace(new RegExp(context?.$config.url,"g"),"");
		}
		
		context?.$http({
			url:url,
			method:'post',
			data:registerForm.value
		}).then(res=>{
			context?.$toolUtil.message('注册成功','success', obj=>{
				context?.$router.push({
					path: "/login"
				});
			})
		})
	}
	//返回登录
	const close = () => {
		context?.$router.push({
			path: "/login"
		});
	}
	init()
</script>
<style lang="scss" scoped>
	
	.register_view {
		background-repeat: no-repeat;
		flex-direction: column;
		background-size: cover!important;
		background: url(http://clfile.zggen.cn/20240418/1d5af3fafbac495f9ddfd914e1b5a496.jpg);
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		background-position: center center;
		// 表单盒子
		.register_form {
			border: 22px ridge #eee;
			border-radius: 0px;
			padding: 0 20px 20px 0;
			margin: 0 auto;
			flex-direction: column;
			background: linear-gradient(180deg, rgba(193,239,255,1) 0%, rgba(41,139,161,1) 100%);
			display: flex;
			width: 688px;
			justify-content: flex-start;
			flex-wrap: wrap;
		}
		// 标题样式
		.title_view {
			padding: 0px;
			margin: 30px auto 30px;
			text-shadow: 2px 4px 3px #3a7a9060;
			color: #3a7a90;
			font-weight: 600;
			letter-spacing: 1px;
			width: 90%;
			font-size: 24px;
			text-align: center;
		}
		// item盒子
		.list_item {
			margin: 0  auto 20px;
			display: flex;
			width: 90%;
			justify-content: flex-start;
			align-items: center;
			// label
			.list_label {
				color: #333;
				background: none;
				width: 120px;
				font-size: 14px;
				line-height: 36px;
				box-sizing: border-box;
				text-align: right;
			}
			// 输入框
			:deep(.list_inp) {
				border: 1px solid #eee;
				border-radius: 30px;
				padding: 0 10px;
				color: #666;
				background: #fff;
				flex: 1;
				width: 100%;
				line-height: 38px;
				box-sizing: border-box;
				height: 38px;
				//去掉默认样式
				.el-input__wrapper{
					border: none;
					box-shadow: none;
					background: none;
					border-radius: 0;
					height: 100%;
					padding: 0;
				}
				.is-focus {
					box-shadow: none !important;
				}
			}
		}
		//下拉框样式
		:deep(.list_sel) {
			border: 1px solid #eee;
			border-radius: 30px;
			padding: 0 10px;
			color: #666;
			background: #fff;
			flex: 1;
			width: 100%;
			line-height: 38px;
			box-sizing: border-box;
			//去掉默认样式
			.select-trigger{
				height: 100%;
				.el-input{
					height: 100%;
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
			}
		}
		//按钮盒子
		.list_btn {
			margin: 10px auto;
			display: flex;
			width: 90%;
			align-items: center;
			flex-wrap: wrap;
			//注册按钮
			.register {
					border: 0px solid rgba(41,139,161,1);
					border-radius: 30px;
					padding: 0 20px;
					margin: 0 auto;
					color: #333;
					background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(229,248,255,1) 75%, rgba(186,237,255,1) 100%);
					width: auto;
					font-size: 16px;
					min-width: 130px;
					height: 50px;
			}
			//注册按钮悬浮样式
			.register:hover {
				border: 1px solid rgba(41,139,161,1);
				border-radius: 30px;
				padding: 0 24px;
				margin: 0 auto;
				color: rgba(41,139,161,1);
				background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(229,248,255,1) 75%, rgba(186,237,255,1) 100%);
				width: auto;
				font-size: 16px;
				min-width: 130px;
				height: 50px;
			}
			//已有账号
			.r-login {
				cursor: pointer;
				padding: 10px 0 0;
				color: #fff;
				width: 100%;
				font-size: 14px;
				text-align: right;
			}
		}
		//图片上传样式
		.list_file_list  {
			//提示语
			:deep(.el-upload__tip){
				margin: 7px 0 0;
				color: #666;
				display: flex;
				font-size: 14px;
				justify-content: flex-start;
				align-items: center;
			}
			//外部盒子
			:deep(.el-upload--picture-card){
				border: 1px solid #eee;
				cursor: pointer;
				background-color: #fff;
				border-radius: 30px;
				width: 100px;
				line-height: 68px;
				text-align: center;
				height: 60px;
				//图标
				.el-icon{
					color: #654B3C;
					font-size: 26px;
				}
			}
			:deep(.el-upload-list__item) {
				border: 1px solid #eee;
				cursor: pointer;
				background-color: #fff;
				border-radius: 30px;
				width: 100px;
				line-height: 68px;
				text-align: center;
				height: 60px;
			}
		}
	}
</style>