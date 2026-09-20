const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '跑腿任务管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'跑腿任务',
							url:'/index/paotuirenwuList'
						},
					]
				},
				{
					name: '新闻资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'系统公告',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '兼职招聘管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'招聘信息',
							url:'/index/zhaopinxinxiList'
						},
					]
				},
				{
					name: '留言板管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'在线留言',
							url:'/index/messagesList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "校内跑腿业务系统"
        } 
    }
}
export default config
