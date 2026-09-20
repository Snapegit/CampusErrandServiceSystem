<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="60%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="12">
						<el-form-item label="订单编号" prop="dingdanbianhao">
							<el-input class="list_inp" v-model="form.dingdanbianhao" :readonly="true" placeholder="订单编号" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="跑腿账号" prop="paotuizhanghao">
							<el-input class="list_inp" v-model="form.paotuizhanghao" placeholder="跑腿账号"
								 type="text" 								:readonly="!isAdd||disabledForm.paotuizhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="跑腿姓名" prop="paotuixingming">
							<el-input class="list_inp" v-model="form.paotuixingming" placeholder="跑腿姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.paotuixingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="跑腿手机" prop="paotuishouji">
							<el-input class="list_inp" v-model="form.paotuishouji" placeholder="跑腿手机"
								 type="text" 								:readonly="!isAdd||disabledForm.paotuishouji?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="物品名称" prop="wupinmingcheng">
							<el-input class="list_inp" v-model="form.wupinmingcheng" placeholder="物品名称"
								 type="text" 								:readonly="!isAdd||disabledForm.wupinmingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="物品分类" prop="wupinfenlei">
							<el-input class="list_inp" v-model="form.wupinfenlei" placeholder="物品分类"
								 type="text" 								:readonly="!isAdd||disabledForm.wupinfenlei?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="跑腿费" prop="paotuifei">
							<el-input class="list_inp" v-model.number="form.paotuifei" placeholder="跑腿费"
								 type="number" 								:readonly="!isAdd||disabledForm.paotuifei?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="完成状态" prop="wanchengzhuangtai">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.wanchengzhuangtai?true:false"
								v-model="form.wanchengzhuangtai" 
								placeholder="请选择完成状态"
								>
								<el-option v-for="(item,index) in wanchengzhuangtaiLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="接单时间" prop="jiedanshijian">
							<el-date-picker
								class="list_date"
								v-model="form.jiedanshijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.jiedanshijian?true:false"
								placeholder="请选择接单时间" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="账号" prop="zhanghao">
							<el-input class="list_inp" v-model="form.zhanghao" placeholder="账号"
								 type="text" 								:readonly="!isAdd||disabledForm.zhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="用户姓名" prop="yonghuxingming">
							<el-input class="list_inp" v-model="form.yonghuxingming" placeholder="用户姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.yonghuxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="手机" prop="shouji">
							<el-input class="list_inp" v-model="form.shouji" placeholder="手机"
								 type="text" 								:readonly="!isAdd||disabledForm.shouji?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item prop="tupian"
									  label="图片"
						>
							<uploads
								:disabled="!isAdd||disabledForm.tupian?true:false"
								action="file/upload"

								tip="请上传图片"
								:limit="3"
								style="width: 100%;text-align: left;"
								:fileUrls="form.tupian?form.tupian:''" 
								@change="tupianUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="取消时间" prop="quxiaoshijian">
							<el-date-picker
								class="list_date"
								v-model="form.quxiaoshijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.quxiaoshijian?true:false"
								placeholder="请选择取消时间" />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="取货地点" prop="quhuodidian">
							<el-input v-model="form.quhuodidian" placeholder="取货地点" type="textarea"
							:readonly="!isAdd||disabledForm.quhuodidian?true:false"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="送达地点" prop="songdadidian">
							<el-input v-model="form.songdadidian" placeholder="送达地点" type="textarea"
							:readonly="!isAdd||disabledForm.songdadidian?true:false"
							/>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'quxiaodingdan'
	const formName = '取消订单'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		dingdanbianhao : false,
		paotuizhanghao : false,
		paotuixingming : false,
		paotuishouji : false,
		wupinmingcheng : false,
		wupinfenlei : false,
		paotuifei : false,
		quhuodidian : false,
		songdadidian : false,
		wanchengzhuangtai : false,
		jiedanshijian : false,
		zhanghao : false,
		yonghuxingming : false,
		shouji : false,
		tupian : false,
		quxiaoshijian : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		dingdanbianhao: [
		],
		paotuizhanghao: [
		],
		paotuixingming: [
		],
		paotuishouji: [
		],
		wupinmingcheng: [
		],
		wupinfenlei: [
		],
		paotuifei: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		quhuodidian: [
		],
		songdadidian: [
		],
		wanchengzhuangtai: [
		],
		jiedanshijian: [
		],
		zhanghao: [
		],
		yonghuxingming: [
		],
		shouji: [
		],
		tupian: [
		],
		quxiaoshijian: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//完成状态列表
	const wanchengzhuangtaiLists = ref([])
	//图片上传回调
	const tupianUploadSuccess=(e)=>{
		form.value.tupian = e
	}
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			dingdanbianhao: getUUID(),
			paotuizhanghao: '',
			paotuixingming: '',
			paotuishouji: '',
			wupinmingcheng: '',
			wupinfenlei: '',
			paotuifei: '',
			quhuodidian: '',
			songdadidian: '',
			wanchengzhuangtai: '待完成',
			jiedanshijian: '',
			zhanghao: '',
			yonghuxingming: '',
			shouji: '',
			tupian: '',
			quxiaoshijian: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.jiedanshijian = context?.$toolUtil.getCurDateTime()
			form.value.quxiaoshijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='dingdanbianhao'){
					form.value.dingdanbianhao = row[x];
					disabledForm.value.dingdanbianhao = true;
					continue;
				}
				if(x=='paotuizhanghao'){
					form.value.paotuizhanghao = row[x];
					disabledForm.value.paotuizhanghao = true;
					continue;
				}
				if(x=='paotuixingming'){
					form.value.paotuixingming = row[x];
					disabledForm.value.paotuixingming = true;
					continue;
				}
				if(x=='paotuishouji'){
					form.value.paotuishouji = row[x];
					disabledForm.value.paotuishouji = true;
					continue;
				}
				if(x=='wupinmingcheng'){
					form.value.wupinmingcheng = row[x];
					disabledForm.value.wupinmingcheng = true;
					continue;
				}
				if(x=='wupinfenlei'){
					form.value.wupinfenlei = row[x];
					disabledForm.value.wupinfenlei = true;
					continue;
				}
				if(x=='paotuifei'){
					form.value.paotuifei = row[x];
					disabledForm.value.paotuifei = true;
					continue;
				}
				if(x=='quhuodidian'){
					form.value.quhuodidian = row[x];
					disabledForm.value.quhuodidian = true;
					continue;
				}
				if(x=='songdadidian'){
					form.value.songdadidian = row[x];
					disabledForm.value.songdadidian = true;
					continue;
				}
				if(x=='wanchengzhuangtai'){
					form.value.wanchengzhuangtai = row[x];
					disabledForm.value.wanchengzhuangtai = true;
					continue;
				}
				if(x=='jiedanshijian'){
					form.value.jiedanshijian = row[x];
					disabledForm.value.jiedanshijian = true;
					continue;
				}
				if(x=='zhanghao'){
					form.value.zhanghao = row[x];
					disabledForm.value.zhanghao = true;
					continue;
				}
				if(x=='yonghuxingming'){
					form.value.yonghuxingming = row[x];
					disabledForm.value.yonghuxingming = true;
					continue;
				}
				if(x=='shouji'){
					form.value.shouji = row[x];
					disabledForm.value.shouji = true;
					continue;
				}
				if(x=='tupian'){
					form.value.tupian = row[x];
					disabledForm.value.tupian = true;
					continue;
				}
				if(x=='quxiaoshijian'){
					form.value.quxiaoshijian = row[x];
					disabledForm.value.quxiaoshijian = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.wanchengzhuangtai='待完成'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('paotuizhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.paotuizhanghao = json.paotuizhanghao
				disabledForm.value.paotuizhanghao = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.paotuizhanghao = true;
			}
			if(json.hasOwnProperty('paotuixingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.paotuixingming = json.paotuixingming
				disabledForm.value.paotuixingming = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.paotuixingming = true;
			}
			if(json.hasOwnProperty('paotuishouji')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.paotuishouji = json.paotuishouji
				disabledForm.value.paotuishouji = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.paotuishouji = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.wanchengzhuangtai = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.quxiaoshijian = true;
			}
		})
		wanchengzhuangtaiLists.value = "已完成,待完成".split(',')
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.tupian!=null) {
			form.value.tupian = form.value.tupian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								emit('formModelChange')
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						emit('formModelChange')
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border: 0px solid #ddd;
		border-radius: 4px;
		padding: 30px;
		margin: 0;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 150px 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 background: none;
			 font-weight: 500;
			 display: block;
			 width: auto;
			 min-width: 130px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 4px solid #b9c8d2;
					border-radius: 0px;
					padding: 0 10px;
					background: #fff;
					width: auto;
					line-height: 32px;
					box-sizing: border-box;
					min-width: 200px;
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
				//日期选择器
				.list_date {
					border: 4px solid #b9c8d2;
					border-radius: 0px;
					background: #fff;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 200px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 4px solid #b9c8d2;
					border-radius: 0px;
					padding: 0 10px;
					background: #fff;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 200px;
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
				// 长文本
				.el-textarea__inner {
					border: 4px solid #b9c8d2;
					border-radius: 0;
					padding: 12px 24px;
					color: #333;
					background: #fff;
					width: 100%;
					font-size: 14px;
					min-height: 120px;
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: flex;
						font-size: 14px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 4px solid #b9c8d2;
						cursor: pointer;
						background-color: #fff;
						border-radius: 0px;
						width: 120px;
						line-height: 60px;
						text-align: center;
						height: 60px;
						//图标
						.el-icon{
							color: #999;
							font-size: 26px;
						}
					}
					.el-upload-list__item {
						border: 4px solid #b9c8d2;
						cursor: pointer;
						background-color: #fff;
						border-radius: 0px;
						width: 120px;
						line-height: 60px;
						text-align: center;
						height: 60px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		padding: 20px 0 20px 150px;
		display: flex;
		width: 100%;
		justify-content: flex-start;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 20px;
			padding: 0 30px;
			margin: 0 20px 0 0;
			color: #fff;
			background: linear-gradient(180deg, rgba(255,198,201,1) 0%, rgba(190,105,109,1) 100%);
			width: auto;
			font-size: 16px;
			min-width: 120px;
			height: 45px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 20px;
			padding: 0 30px;
			margin: 0 20px 0 0;
			color: #fff;
			background: linear-gradient(180deg, rgba(193,239,255,1) 0%, rgba(41,139,161,1) 100%);
			width: auto;
			font-size: 16px;
			min-width: 120px;
			height: 45px;
		}
		.formModel_confirm:hover {
		}
	}
</style>