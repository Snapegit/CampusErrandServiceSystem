	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import dingdanpingjia from '@/views/dingdanpingjia/list'
	import paotui from '@/views/paotui/list'
	import jiedanxinxi from '@/views/jiedanxinxi/list'
	import storeup from '@/views/storeup/list'
	import dingdanwancheng from '@/views/dingdanwancheng/list'
	import discusszhaopinxinxi from '@/views/discusszhaopinxinxi/list'
	import zhaopinxinxi from '@/views/zhaopinxinxi/list'
	import wupinfenlei from '@/views/wupinfenlei/list'
	import quxiaodingdan from '@/views/quxiaodingdan/list'
	import yonghu from '@/views/yonghu/list'
	import messages from '@/views/messages/list'
	import paotuirenwu from '@/views/paotuirenwu/list'
	import config from '@/views/config/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/news',
			name: '系统公告',
			component: news
		}
		,{
			path: '/dingdanpingjia',
			name: '订单评价',
			component: dingdanpingjia
		}
		,{
			path: '/paotui',
			name: '跑腿',
			component: paotui
		}
		,{
			path: '/jiedanxinxi',
			name: '接单信息',
			component: jiedanxinxi
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/dingdanwancheng',
			name: '订单完成',
			component: dingdanwancheng
		}
		,{
			path: '/discusszhaopinxinxi',
			name: '招聘信息评论评论',
			component: discusszhaopinxinxi
		}
		,{
			path: '/zhaopinxinxi',
			name: '招聘信息',
			component: zhaopinxinxi
		}
		,{
			path: '/wupinfenlei',
			name: '物品分类',
			component: wupinfenlei
		}
		,{
			path: '/quxiaodingdan',
			name: '取消订单',
			component: quxiaodingdan
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/messages',
			name: '在线留言',
			component: messages
		}
		,{
			path: '/paotuirenwu',
			name: '跑腿任务',
			component: paotuirenwu
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
