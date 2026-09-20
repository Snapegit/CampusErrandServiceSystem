<template>
	<div>
		<div class="forget_view">
			<el-form :model="forgetForm" class="forget_box">
				<div class="forget_title">校内跑腿业务系统{{pageType==1?'找回密码':pageType==2?'输入密保':'重置密码'}}</div>
				<div class="tab_line">
					<div class="line"></div>
					<div class="num_line">
						<div class="line_number" :class="pageType==1?'line_number1':'',pageType>1?'line_number2':''"><div class="number" v-if="pageType<2">1</div><el-icon v-else><Check /></el-icon></div>
						<div class="line_number" :class="pageType==2?'line_number1':'',pageType>2?'line_number2':''"><div class="number" v-if="pageType<3">2</div><el-icon v-else><Check /></el-icon></div>
						<div class="line_number" :class="pageType==3?'line_number1':''"><div class="number">3</div></div>
					</div>
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
	const pageType = ref(1)
	const forgetForm = ref({})
	const userForm = ref({})
	//返回登录
	const close = () => {
		context?.$router.push({
			path: "/login"
		});
	}
</script>

<style lang="scss" scoped>
	.forget_view {
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
		.forget_box {
			border: 22px ridge #eee;
			border-radius: 0px;
			padding: 0 50px 20px;
			margin: 0 auto;
			flex-direction: column;
			background: linear-gradient(180deg, rgba(193,239,255,1) 0%, rgba(41,139,161,1) 100%);
			display: flex;
			width: 688px;
			justify-content: flex-start;
			flex-wrap: wrap;
			// 标题
			.forget_title {
				padding: 0px;
				margin: 40px auto 40px;
				text-shadow: 2px 4px 3px #3a7a9060;
				color: #3a7a90;
				font-weight: 600;
				letter-spacing: 1px;
				width: 90%;
				font-size: 22px;
				text-align: center;
			}
			// tab
			// 盒子
			.tab_line{
				padding: 30px 0 50px;
				flex-direction: column;
				display: flex;
				width: 100%;
				align-items: center;
				// 中间线
				.line{
				background: #eee;
				width: 80%;
				height: 1px;
				}
				// item盒子
				.num_line{
					margin: -20px 0 0;
					display: flex;
					width: 80%;
					justify-content: space-between;
					align-items: center;
					height: 40px;
					// 默认样式
					.line_number{
						border: 4px solid #ddd;
						border-radius: 50%;
						color: #aaa;
						background: #fff;
						display: flex;
						width: 40px;
						font-size: 18px;
						justify-content: center;
						align-items: center;
						height: 40px;
					}
					// 选中样式
					.line_number1{
						box-shadow: 0px 6px 8px -3px #3a7a90;
						color: #3a7a90;
						background: #fff;
						font-size: 22px;
						border-color: #bedccc;
					}
					// 完成样式
					.line_number2{
						box-shadow: 0px 6px 8px -3px #185821;
						color: #19a91d;
						background: #fff;
						border-color: #19a91d;
					}
				}
			}
			// item
			.list_item {
				margin: 0 auto 30px;
				display: flex;
				width: 90%;
				justify-content: flex-start;
				align-items: center;
				// label
				.item_label {
					background: none;
					display: block;
					width: 130px;
					font-size: 14px;
					line-height: 36px;
					box-sizing: border-box;
					text-align: right;
					height: 36px;
				}
				// 输入框
				:deep(.list_inp) {
					border: 0px solid #eee;
					border-radius: 30px;
					padding: 0 10px;
					color: #666;
					background: #fff;
					width: 80%;
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
				//下拉框样式
				:deep(.list_sel) {
					border: 0px solid #eee;
					border-radius: 30px;
					padding: 0 10px;
					color: #666;
					background: #fff;
					width: 80%;
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
			}
			// 按钮盒子
			.list_btn {
				margin: 20px auto 0;
				display: flex;
				width: 90%;
				justify-content: center;
				align-items: center;
				flex-wrap: wrap;
				// 获取密保
				:deep(.el-button--success) {
					border: 0;
					cursor: pointer;
					border-radius: 30px;
					padding: 0 40px;
					margin: 0 10px 0 0;
					color: #333;
					background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(229,248,255,1) 75%, rgba(186,237,255,1) 100%);
					width: auto;
					font-size: 16px;
					height: 44px;
				}
				// 获取密保悬浮
				:deep(.el-button--success:hover) {
				}
				// 确认密保
				:deep(.el-button--primary) {
					border: 0;
					cursor: pointer;
					border-radius: 30px;
					padding: 0 40px;
					margin: 0 10px 0 0;
					color: #333;
					background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(229,248,255,1) 75%, rgba(186,237,255,1) 100%);
					width: auto;
					font-size: 16px;
					height: 44px;
				}
				// 确认密保悬浮
				:deep(.el-button--primary:hover) {
				}
				// 重置密码
				:deep(.el-button--warning) {
					border: 0;
					cursor: pointer;
					border-radius: 30px;
					padding: 0 40px;
					margin: 0 10px 0 0;
					color: #333;
					background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(229,248,255,1) 75%, rgba(186,237,255,1) 100%);
					width: auto;
					font-size: 16px;
					height: 44px;
				}
				// 重置密码悬浮
				:deep(.el-button--warning:hover) {
				}
				.r-login {
					cursor: pointer;
					padding: 10px 0 0;
					color: #fff;
					width: 100%;
					font-size: 14px;
					text-align: right;
				}
			}
		}
	}

	
</style>
