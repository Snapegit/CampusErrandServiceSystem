
<template>
	<div>
		<div class="app-contain">
			<div class="list_search_view">
				<el-form :model="searchQuery" class="search_form" >
					<div class="search_view">
						<div class="search_label">
							物品名称：
						</div>
						<div class="search_box">
							<el-input class="search_inp" v-model="searchQuery.wupinmingcheng" placeholder="物品名称"
								clearable>
							</el-input>
						</div>
					</div>
					<div class="search_view">
						<div class="search_label">
							任务编号：
						</div>
						<div class="search_box">
							<el-input class="search_inp" v-model="searchQuery.renwubianhao" placeholder="任务编号"
								clearable>
							</el-input>
						</div>
					</div>
					<div class="search_btn_view">
						<el-button class="search_btn" type="primary" @click="searchClick()" size="small">搜索</el-button>
					</div>
				</el-form>
				<br>
				<div class="btn_view">
					<el-button type="success" @click="addClick" v-if="btnAuth('paotuirenwu','新增')">新增</el-button>
					<el-button  v-if=" btnAuth('paotuirenwu','查看')" type="info"  :disabled="selRows.length==1?false:true" @click="infoClick(null)">详情</el-button>
					<el-button type="primary" :disabled="selRows.length==1?false:true" @click="editClick" v-if=" btnAuth('paotuirenwu','修改')">修改</el-button>
					<el-button type="danger" :disabled="selRows.length?false:true" @click="delClick(null)"  v-if="btnAuth('paotuirenwu','删除')">删除</el-button>
				</div>
			</div>
			<br>
			<el-table
				v-loading="listLoading"
				border 
				:stripe='false'
				@selection-change="handleSelectionChange" 
				ref="table"
				v-if="btnAuth('paotuirenwu','查看')"
				:data="list"
				@row-click="listChange">
				<el-table-column :resizable='true' align="left" header-align="left" type="selection" width="55" />
				<el-table-column label="序号" width="70" :resizable='true' :sortable='true' align="left" header-align="left">
					<template #default="scope">{{ scope.$index + 1}}</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="wupinmingcheng"
					label="物品名称">
					<template #default="scope">
						{{scope.row.wupinmingcheng}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="wupinfenlei"
					label="物品分类">
					<template #default="scope">
						{{scope.row.wupinfenlei}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="renwumiaoshu"
					label="任务描述">
					<template #default="scope">
						{{scope.row.renwumiaoshu}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="paotuifei"
					label="跑腿费">
					<template #default="scope">
						{{scope.row.paotuifei}}
					</template>
				</el-table-column>
				<el-table-column label="图片" width="120" :resizable='true' :sortable='true' align="left" header-align="left">
					<template #default="scope">
						<div v-if="scope.row.tupian">
							<el-image v-if="scope.row.tupian.substring(0,4)=='http'" preview-teleported
								:preview-src-list="[scope.row.tupian.split(',')[0]]"
								:src="scope.row.tupian.split(',')[0]" style="width:100px;height:100px"></el-image>
							<el-image v-else preview-teleported
								:preview-src-list="[$config.url+scope.row.tupian.split(',')[0]]"
								:src="$config.url+scope.row.tupian.split(',')[0]" style="width:100px;height:100px">
							</el-image>
						</div>
						<div v-else>无图片</div>
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="zhanghao"
					label="账号">
					<template #default="scope">
						{{scope.row.zhanghao}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="yonghuxingming"
					label="用户姓名">
					<template #default="scope">
						{{scope.row.yonghuxingming}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="shouji"
					label="手机">
					<template #default="scope">
						{{scope.row.shouji}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="fabushijian"
					label="发布时间">
					<template #default="scope">
						{{scope.row.fabushijian}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="zhuangtai"
					label="状态">
					<template #default="scope">
						{{scope.row.zhuangtai}}
					</template>
				</el-table-column>
				<el-table-column
					 :resizable='true' 
					 :sortable='true' 
					 align="left" 
					 header-align="left"
					 prop="renwubianhao"
					label="任务编号">
					<template #default="scope">
						{{scope.row.renwubianhao}}
					</template>
				</el-table-column>
				<el-table-column label="操作" width="300" :resizable='true' :sortable='true' align="left" header-align="left">
					<template #default="scope">
						<el-button type="info" v-if=" btnAuth('paotuirenwu','查看')" @click="infoClick(scope.row.id)">详情</el-button>
						<el-button v-if="btnAuth('paotuirenwu','接单')" type="success" @click="jiedanxinxiCrossAddOrUpdateHandler(scope.row,'cross','','zhuangtai','已被接单','已接单,待接单'.split(',')[0])">接单</el-button>
					</template>
				</el-table-column>
			</el-table>
			<el-pagination 
				background
				:layout="layouts.join(',')"
				:total="total" 
				:page-size="listQuery.limit"
				prev-text="上一页"
				next-text="下一页"
				:hide-on-single-page="false"
				:style='{"border":"0px solid #e1e1e1","padding":"10px 0","margin":"20px 0 0","whiteSpace":"nowrap","color":"#333","textAlign":"left","background":"none","width":"100%","fontWeight":"500"}'
				@size-change="sizeChange"
				@current-change="currentChange" 
				@prev-click="prevClick"
				@next-click="nextClick"  />
		</div>
		<formModel ref="formRef" @formModelChange="formModelChange"></formModel>
		<jiedanxinxiFormModel ref="jiedanxinxiFormModelRef" @formModelChange="formModelChange"></jiedanxinxiFormModel>
	</div>
</template>
<script setup>
	import axios from 'axios'
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		onMounted,
		watch,
	} from 'vue'
	import {
		useRoute,
		useRouter
	} from 'vue-router'
	import {
		ElMessageBox
	} from 'element-plus'
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	import formModel from './formModel.vue'
	
	//基础信息
	const tableName = 'paotuirenwu'
	const formName = '跑腿任务'
	const route = useRoute()
	//基础信息
	onMounted(()=>{
	})
	//列表数据
	const list = ref(null)
	const table = ref(null)
	const listQuery = ref({
		page: 1,
		limit: 20,
		sort: 'id',
		order: 'desc'
	})
	const searchQuery = ref({})
	const selRows = ref([])
	const listLoading = ref(false)
	const listChange = (row) =>{
		nextTick(()=>{
			//table.value.clearSelection()
			table.value.toggleRowSelection(row)
		})
	}
	//列表
	const getList = () => {
		listLoading.value = true
		let params = JSON.parse(JSON.stringify(listQuery.value))
		params['sort'] = 'id'
		params['order'] = 'desc'
		if(searchQuery.value.wupinmingcheng&&searchQuery.value.wupinmingcheng!=''){
			params['wupinmingcheng'] = '%' + searchQuery.value.wupinmingcheng + '%'
		}
		if(searchQuery.value.renwubianhao&&searchQuery.value.renwubianhao!=''){
			params['renwubianhao'] = '%' + searchQuery.value.renwubianhao + '%'
		}
		context?.$http({
			url: `${tableName}/page`,
			method: 'get',
			params: params
		}).then(res => {
			listLoading.value = false
			list.value = res.data.data.list
			total.value = Number(res.data.data.total)
		})
	}
	//删
	const delClick = (id) => {
		let ids = ref([])
		if (id) {
			ids.value = [id]
		} else {
			if (selRows.value.length) {
				for (let x in selRows.value) {
					ids.value.push(selRows.value[x].id)
				}
			} else {
				return false
			}
		}
		ElMessageBox.confirm(`是否删除选中${formName}`, '提示', {
			confirmButtonText: '是',
			cancelButtonText: '否',
			type: 'warning',
		}).then(() => {
			context?.$http({
				url: `${tableName}/delete`,
				method: 'post',
				data: ids.value
			}).then(res => {
				context?.$toolUtil.message('删除成功', 'success',()=>{
					getList()
				})
			})
		})
	}
	//多选
	const handleSelectionChange = (e) => {
		selRows.value = e
	}
	//列表数据
	//分页
	const total = ref(0)
	const layouts = ref(["total","prev","pager","next","sizes","jumper"])
	const sizeChange = (size) => {
		listQuery.value.limit = size
		getList()
	}
	const currentChange = (page) => {
		listQuery.value.page = page
		getList()
	}
	const prevClick = () => {
		listQuery.value.page = listQuery.value.page - 1
		getList()
	}
	const nextClick = () => {
		listQuery.value.page = listQuery.value.page + 1
		getList()
	}
	//分页
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	//搜索
	const searchClick = () => {
		listQuery.value.page = 1
		getList()
	}
	//表单
	const formRef = ref(null)
	const formModelChange=()=>{
		searchClick()
	}
	const addClick = ()=>{
		formRef.value.init()
	}
	const editClick = ()=>{
		if(selRows.value.length){
			formRef.value.init(selRows.value[0].id,'edit')
		}
	}
	
	const infoClick = (id=null)=>{
		if(id){
			formRef.value.init(id,'info')
		}
		else if(selRows.value.length){
			formRef.value.init(selRows.value[0].id,'info')
		}
	}
	// 表单
	// 预览文件
	const preClick = (file) =>{
		if(!file){
			context?.$toolUtil.message('文件不存在','error')
		}
		window.open(context?.$config.url + file)
		// const a = document.createElement('a');
		// a.style.display = 'none';
		// a.setAttribute('target', '_blank');
		// file && a.setAttribute('download', file);
		// a.href = context?.$config.url + file;
		// document.body.appendChild(a);
		// a.click();
		// document.body.removeChild(a);
	}
	// 下载文件
	const download = (file) => {
		if(!file){
			context?.$toolUtil.message('文件不存在','error')
		}
		let arr = file.replace(new RegExp('file/', "g"), "")
		axios.get((location.href.split(context?.$config.name).length>1 ? location.href.split(context?.$config.name)[0] :'') + context?.$config.name + '/file/download?fileName=' + arr, {
			headers: {
				token: context?.$toolUtil.storageGet('Token')
			},
			responseType: "blob"
		}).then(({
			data
		}) => {
			const binaryData = [];
			binaryData.push(data);
			const objectUrl = window.URL.createObjectURL(new Blob(binaryData, {
				type: 'application/pdf;chartset=UTF-8'
			}))
			const a = document.createElement('a')
			a.href = objectUrl
			a.download = arr
			// a.click()
			// 下面这个写法兼容火狐
			a.dispatchEvent(new MouseEvent('click', {
				bubbles: true,
				cancelable: true,
				view: window
			}))
			window.URL.revokeObjectURL(data)
		})
	}


	import jiedanxinxiFormModel from '@/views/jiedanxinxi/formModel'
	const jiedanxinxiFormModelRef = ref(null)
    const jiedanxinxiCrossAddOrUpdateHandler = (row,type,crossOptAudit,statusColumnName,tips,statusColumnValue) => {
		if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
			var obj = row
			for (var o in obj){
				if(o==statusColumnName && obj[o]==statusColumnValue){
					context?.$toolUtil.message(tips,'error')
					return;
				}
			}
		}
		nextTick(()=>{
			jiedanxinxiFormModelRef.value.init(row.id,'cross','接单',row,'paotuirenwu',statusColumnName,tips,statusColumnValue)
		})
    }
	//初始化
	const init = () => {
		getList()
	}
	init()
</script>
<style lang="scss" scoped>
	
	// 操作盒子
	.list_search_view {
		margin: 0 0 20px;
		display: flex;
		flex-wrap: wrap;
		// 搜索盒子
		.search_form {
			border: 0px solid #654B3C;
			border-radius: 20px;
			padding: 0 0 0 20px;
			margin: 0 20px 0 0;
			display: flex;
			align-items: center;
			order: 2;
			// 子盒子
			.search_view {
				padding: 0;
				margin: 0 0 0 0;
				display: flex;
				align-items: center;
				// 搜索label
				.search_label {
					margin: 0 5px 0;
					color: #666;
					background: none;
					font-weight: 500;
					display: inline-block;
					width: auto;
					font-size: 14px;
					line-height: 40px;
					text-align: right;
					height: 40px;
				}
				// 搜索item
				.search_box {
					padding: 0;
					display: inline-block;
					width: auto;
					// 输入框
					:deep(.search_inp) {
						border-radius: 4px;
						padding: 0 10px;
						background: #fff;
						width: 150px;
						border-color: #b9c8d2;
						border-width: 4px;
						line-height: 32px;
						box-sizing: border-box;
						border-style: solid;
						height: 40px;
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
			}
			// 搜索按钮盒子
			.search_btn_view {
				// 搜索按钮
				.search_btn {
					border: 4px inset #c1efff;
					cursor: pointer;
					border-radius: 4px;
					padding: 0 20px;
					margin: 0 0 0 10px;
					color: #fff;
					background: linear-gradient(180deg, rgba(193,239,255,1) 0%, rgba(41,139,161,1) 100%);
					width: auto;
					font-size: 14px;
					min-width: 90px;
					height: 40px;
				}
				// 搜索按钮-悬浮
				.search_btn:hover {
				}
			}
		}
		//头部按钮盒子
		.btn_view {
			display: flex;
			order: 1;
			// 其他
			:deep(.el-button--default){
				border: 4px inset #ccc;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 20px;
				margin: 0 5px 0 0;
				color: #333;
				background: #fff;
				font-weight: 600;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 其他-悬浮
			:deep(.el-button--default:hover){
				opacity: 0.8;
			}
			// 新增
			:deep(.el-button--success){
				border: 4px inset #a8deec;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 20px;
				margin: 0 5px 0 0;
				color: #51abca;
				background: #fff;
				font-weight: 600;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 新增-悬浮
			:deep(.el-button--success:hover){
			}
			// 修改
			:deep(.el-button--primary){
				border: 4px inset #99b6ec;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 20px;
				margin: 0 5px 0 0;
				color: #6f9aea;
				background: #fff;
				font-weight: 600;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 修改-悬浮
			:deep(.el-button--primary:hover){
			}
			// 详情
			:deep(.el-button--info){
				border: 4px inset #a8deec;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 20px;
				margin: 0 5px 0 0;
				color: #51abca;
				background: #fff;
				font-weight: 600;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 详情-悬浮
			:deep(.el-button--info:hover){
			}
			// 删除
			:deep(.el-button--danger){
				border: 4px inset #f1aba0;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 20px;
				margin: 0 5px 0 0;
				color: #eb7865;
				background: #fff;
				font-weight: 600;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 删除-悬浮
			:deep(.el-button--danger:hover){
			}
			// 统计
			:deep(.el-button--warning){
				border: 4px inset #99b6ec;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 20px;
				margin: 0 5px 0 0;
				color: #6f9aea;
				background: #fff;
				font-weight: 600;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 统计-悬浮
			:deep(.el-button--warning:hover){
				opacity: 0.8;
			}
		}
	}
	// 表格样式
	.el-table {
		border-radius: 0px;
		padding: 0;
		background: #fff;
		width: 100%;
		font-size: 14px;
		border-color: #73bac820;
		border-width: 1px 0 0 1px;
		border-style: solid;
		:deep(.el-table__header-wrapper) {
			thead {
				color: inherit;
				font-weight: 500;
				width: 100%;
				tr {
					background: #f8f8f8;
					th {
						padding: 5px 0;
						background: #f1ce55;
						border-color: #edf7f9;
						border-width: 0 0px 6px 0;
						border-style: solid;
						text-align: left;
						.cell {
							padding: 0 5px;
							word-wrap: normal;
							color: #3a7a90;
							white-space: normal;
							font-weight: bold;
							display: inline-block;
							vertical-align: middle;
							font-size: 16px;
							line-height: 24px;
							text-overflow: ellipsis;
							word-break: break-all;
							width: 100%;
							position: relative;
						}
					}
				}
			}
		}
		:deep(.el-table__body-wrapper) {
			tbody {
				width: 100%;
				tr {
					background: #fff;
					td {
						padding: 5px 0;
						color: #555;
						background: #fff;
						border-color: #edf7f9;
						border-width: 0 0px 6px 0;
						border-style: solid;
						text-align: left;
						.cell {
							padding: 0 10px;
							overflow: hidden;
							word-break: break-all;
							white-space: normal;
							line-height: 24px;
							text-overflow: ellipsis;
							// 编辑
							.el-button--primary {
								border: 0px solid #eee;
								cursor: pointer;
								border-radius: 20px;
								padding: 4px 8px;
								margin: 0 6px 6px 0;
								color: #fff;
								background: #6f9aea;
								width: auto;
								font-size: 13px;
								height: auto;
							}
							// 编辑-悬浮
							.el-button--primary:hover {
							}
							// 详情
							.el-button--info {
								border: 0px solid #eee;
								cursor: pointer;
								border-radius: 20px;
								padding: 4px 8px;
								margin: 0 6px 6px 0;
								color: #fff;
								background: #51abca;
								width: auto;
								font-size: 13px;
								height: auto;
							}
							// 详情-悬浮
							.el-button--info:hover {
							}
							// 删除
							.el-button--danger {
								border: 0px solid #eee;
								cursor: pointer;
								border-radius: 20px;
								padding: 4px 8px;
								margin: 0 6px 6px 0;
								color: #fff;
								background: #eb7865;
								width: auto;
								font-size: 13px;
								height: auto;
							}
							// 删除-悬浮
							.el-button--danger:hover {
							}
							// 跨表
							.el-button--success {
								border: 0px solid #eee;
								cursor: pointer;
								border-radius: 20px;
								padding: 4px 8px;
								margin: 0 6px 6px 0;
								color: #fff;
								background: #999;
								width: auto;
								font-size: 13px;
								height: auto;
							}
							// 跨表-悬浮
							.el-button--success:hover {
							}
							// 操作
							.el-button--warning {
								border: 0px solid #eee;
								cursor: pointer;
								border-radius: 20px;
								padding: 4px 8px;
								margin: 0 6px 6px 0;
								color: #fff;
								background: #ff9a48;
								width: auto;
								font-size: 13px;
								height: auto;
							}
							// 操作-悬浮
							.el-button--warning:hover {
							}
						}
					}
				}
				tr:hover {
					td {
						padding: 5px 0;
						color: #666;
						background: #73bac810;
						border-color: #edf7f9;
						border-width: 0 0px 6px 0;
						border-style: solid;
						text-align: left;
					}
				}
			}
		}
	}
	// 分页器
	.el-pagination {
		// 总页码
		:deep(.el-pagination__total) {
			margin: 0 10px 0 0;
			color: #666;
			font-weight: 400;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 28px;
			height: 28px;
		}
		// 上一页
		:deep(.btn-prev) {
			border: 1px solid #eee;
			border-radius: 0px;
			padding: 0 5px;
			margin: 0 5px;
			color: #666;
			background: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 26px;
			min-width: 35px;
			height: 26px;
		}
		// 下一页
		:deep(.btn-next) {
			border: 1px solid #eee;
			border-radius: 0px;
			padding: 0 5px;
			margin: 0 5px;
			color: #666;
			background: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 26px;
			min-width: 35px;
			height: 26px;
		}
		// 上一页禁用
		:deep(.btn-prev:disabled) {
			border: 1px solid #eee;
			cursor: not-allowed;
			border-radius: 0px;
			padding: 0 5px;
			margin: 0 5px;
			color: #666;
			background: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 26px;
			height: 26px;
		}
		// 下一页禁用
		:deep(.btn-next:disabled) {
			border: 1px solid #eee;
			cursor: not-allowed;
			border-radius: 0px;
			padding: 0 5px;
			margin: 0 5px;
			color: #666;
			background: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 26px;
			height: 26px;
		}
		// 页码
		:deep(.el-pager) {
			padding: 0;
			margin: 0;
			display: inline-block;
			vertical-align: top;
			// 数字
			.number {
				cursor: pointer;
				border: 1px solid #ddd;
				padding: 0 4px;
				margin: 0 5px;
				color: #666;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 26px;
				border-radius: 0px;
				background: #fff;
				text-align: center;
				min-width: 30px;
				height: 26px;
			}
			// 数字悬浮
			.number:hover {
				cursor: pointer;
				border: 1px solid #8ed0e8;
				padding: 0 4px;
				margin: 0 5px;
				color: #666;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 26px;
				border-radius: 0px;
				background: #bcedff;
				text-align: center;
				min-width: 30px;
				height: 26px;
			}
			// 选中
			.number.is-active {
				cursor: default;
				border: 1px solid #8ed0e8;
				padding: 0 4px;
				margin: 0 5px;
				color: #333;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 26px;
				border-radius: 0px;
				background: #bcedff;
				text-align: center;
				min-width: 30px;
				height: 26px;
			}
		}
		// sizes
		:deep(.el-pagination__sizes) {
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 28px;
			height: 28px;
			.el-select {
				border: 1px solid #DCDFE6;
				cursor: pointer;
				padding: 0;
				color: #606266;
				display: inline-block;
				font-size: 13px;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: #FFF;
				width: 100%;
				text-align: center;
				height: 28px;
			}
		}
		// 跳页
		:deep(.el-pagination__jump) {
			margin: 0 0 0 24px;
			color: #606266;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 28px;
			height: 28px;
			// 输入框
			.el-input {
				border: 1px solid #DCDFE6;
				cursor: pointer;
				padding: 0 3px;
				color: #606266;
				display: inline-block;
				font-size: 14px;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: #FFF;
				width: auto;
				text-align: center;
				height: 28px;
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
	}
</style>
