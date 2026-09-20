import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import paotuiList from '@/views/pages/paotui/list'
import paotuiDetail from '@/views/pages/paotui/formModel'
import paotuiAdd from '@/views/pages/paotui/formAdd'
import paotuiRegister from '@/views/pages/paotui/register'
import paotuiCenter from '@/views/pages/paotui/center'
import paotuirenwuList from '@/views/pages/paotuirenwu/list'
import paotuirenwuDetail from '@/views/pages/paotuirenwu/formModel'
import paotuirenwuAdd from '@/views/pages/paotuirenwu/formAdd'
import wupinfenleiList from '@/views/pages/wupinfenlei/list'
import wupinfenleiDetail from '@/views/pages/wupinfenlei/formModel'
import wupinfenleiAdd from '@/views/pages/wupinfenlei/formAdd'
import jiedanxinxiList from '@/views/pages/jiedanxinxi/list'
import jiedanxinxiDetail from '@/views/pages/jiedanxinxi/formModel'
import jiedanxinxiAdd from '@/views/pages/jiedanxinxi/formAdd'
import dingdanwanchengList from '@/views/pages/dingdanwancheng/list'
import dingdanwanchengDetail from '@/views/pages/dingdanwancheng/formModel'
import dingdanwanchengAdd from '@/views/pages/dingdanwancheng/formAdd'
import dingdanpingjiaList from '@/views/pages/dingdanpingjia/list'
import dingdanpingjiaDetail from '@/views/pages/dingdanpingjia/formModel'
import dingdanpingjiaAdd from '@/views/pages/dingdanpingjia/formAdd'
import zhaopinxinxiList from '@/views/pages/zhaopinxinxi/list'
import zhaopinxinxiDetail from '@/views/pages/zhaopinxinxi/formModel'
import zhaopinxinxiAdd from '@/views/pages/zhaopinxinxi/formAdd'
import storeupList from '@/views/pages/storeup/list'
import messagesList from '@/views/pages/messages/list'
import quxiaodingdanList from '@/views/pages/quxiaodingdan/list'
import quxiaodingdanDetail from '@/views/pages/quxiaodingdan/formModel'
import quxiaodingdanAdd from '@/views/pages/quxiaodingdan/formAdd'
import newsList from '@/views/pages/news/list'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'paotuiList',
			component: paotuiList
		}, {
			path: 'paotuiDetail',
			component: paotuiDetail
		}, {
			path: 'paotuiAdd',
			component: paotuiAdd
		}
		, {
			path: 'paotuiCenter',
			component: paotuiCenter
		}
		, {
			path: 'paotuirenwuList',
			component: paotuirenwuList
		}, {
			path: 'paotuirenwuDetail',
			component: paotuirenwuDetail
		}, {
			path: 'paotuirenwuAdd',
			component: paotuirenwuAdd
		}
		, {
			path: 'wupinfenleiList',
			component: wupinfenleiList
		}, {
			path: 'wupinfenleiDetail',
			component: wupinfenleiDetail
		}, {
			path: 'wupinfenleiAdd',
			component: wupinfenleiAdd
		}
		, {
			path: 'jiedanxinxiList',
			component: jiedanxinxiList
		}, {
			path: 'jiedanxinxiDetail',
			component: jiedanxinxiDetail
		}, {
			path: 'jiedanxinxiAdd',
			component: jiedanxinxiAdd
		}
		, {
			path: 'dingdanwanchengList',
			component: dingdanwanchengList
		}, {
			path: 'dingdanwanchengDetail',
			component: dingdanwanchengDetail
		}, {
			path: 'dingdanwanchengAdd',
			component: dingdanwanchengAdd
		}
		, {
			path: 'dingdanpingjiaList',
			component: dingdanpingjiaList
		}, {
			path: 'dingdanpingjiaDetail',
			component: dingdanpingjiaDetail
		}, {
			path: 'dingdanpingjiaAdd',
			component: dingdanpingjiaAdd
		}
		, {
			path: 'zhaopinxinxiList',
			component: zhaopinxinxiList
		}, {
			path: 'zhaopinxinxiDetail',
			component: zhaopinxinxiDetail
		}, {
			path: 'zhaopinxinxiAdd',
			component: zhaopinxinxiAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'messagesList',
			component: messagesList
		}
		, {
			path: 'quxiaodingdanList',
			component: quxiaodingdanList
		}, {
			path: 'quxiaodingdanDetail',
			component: quxiaodingdanDetail
		}, {
			path: 'quxiaodingdanAdd',
			component: quxiaodingdanAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
	,{
		path: '/paotuiRegister',
		component: paotuiRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
