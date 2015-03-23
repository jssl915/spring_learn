package main.java.index.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.index.entity.Blog;
import main.java.index.entity.BlogClassify;
import main.java.index.service.BlogService;

import org.apache.commons.lang.time.FastDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class DataController{
	@Autowired
	private BlogService blogService;
	//主页
	@RequestMapping(value="")
	public String index(HttpServletRequest request, HttpServletResponse response){
//		String blog_title[] = new String[15];
//		String blog_entity[] =new String[15];
//		blog_title[0]="<b>《幸福额度》</b>—不同的选择各自的幸福";
//		blog_entity[0]="要找到一个男人能够给我们幸福，是非常困难的事情，他的年纪、身高、体重、我们都可以用外在来判断，可是他的收入、财务状况、家庭、事业，还有健康状况，"+
//					"就不是短时间内可以判断出结果的。一个男人的价值取决于他的信用卡额度。让银行帮你选男人。银行会调查他的职业、他的公司、他的一切，然后给你一个数字化的信用额"+
//					"度，信用，在爱情里占优相当重要的位置，我们可能会出错，但银行绝对不会。——《幸福额度》李晓红你要见的是他的母亲而不是见他。穿衣服给你的对象看，要性感；穿"+
//					"衣服给你对象的母亲看，要感性。要尽量选择在颜色还有款式上没有杀伤力和侵略性的，要让他的母亲知道，你永远不会跟她争，也争不过她";
//
//		blog_title[1]="<b>童年</b>的朋友";
//		blog_entity[1]="六岁的时候，我曾经急着要当一个拳击家。因为没有训练用的沙袋，我就拿自己的小熊练拳。我把它放到沙发上，摆好，以便打起来顺手些。"+
//		    "小熊坐在我的面前，一身巧克力色。两只眼睛一大一小：小的——黄色，玻璃做的；大的白色——是用一个纽扣做的。小熊用它那不一样大的眼睛十分快活地瞧着我，两手朝上举着，似乎在开玩笑，说它不等我打就投降了……";
//
//		blog_title[2]="<b>拐弯处</b>的回头";
//		blog_entity[2]="一天，弟弟在郊游时脚被尖利的石头割破，到医院包扎后，几个同学送他回家。在家附近的巷口，弟弟碰见了爸爸。于是他一边跷起扎了绷带的脚给爸爸看，一边哭丧着脸诉苦，满以为会收获一点同情与怜爱，不料爸爸并没有安慰他，只是简单交代几句，便自己走了。";
//
//		blog_title[3]="<b>遗失</b>的美德";
//		blog_entity[3]="中国人喜欢赞美苦难，美化苦难，这种观点把一切需要解决和改良的问题都转化为一个无私奉献的道德自律问题。这是一种毫无血性的评论，它把一个人无法选择的行为、别人的痛苦变成饭后谈论的资本。鲁迅先生曾称这种文化培养出的道德为“瞒和骗”。所以，我们认为这种“苦难美学”不值得追捧。";
//
//		blog_title[4]="<b>钱？</b>前？";
//		blog_entity[4]="向前看？向钱看？也许很多人认为应该选择“向前看”。";
//
//		blog_title[5]="<b>陌上</b>花开";
//		blog_entity[5]="“陌上花开，可缓缓归矣。” 含义：（夫人），田间阡陌上的花开了，你可以一边赏花，一边慢慢地回来。";
//
//		blog_title[6]="<b>诗人赵丽华：</b>男人都是好色的动物";
//		blog_entity[6]="男人都好色，这一点你要知道。他们都是吃着锅里的还要占着碗里的，这一点你也要知道。他们吃锅里的时候是真心吃，吃碗里的时候也同样有滋有味，所以你不要相信他们说得“更爱你”或者“只爱你”之类的话。";
//
//		blog_title[7]="<b>去年</b>的树";
//		blog_entity[7]=" 一棵树和一只鸟儿是好朋友。鸟儿站在树枝上，天天给树唱歌。树呢，天天听着鸟儿唱。日子一天天过去，寒冷的冬天就要来到了。鸟儿必须离开树，飞到很远很远的地方去。树对鸟儿说：“再见了，小鸟！明年春天请你回来，还唱歌给我听。”鸟儿说：“好的，我明年春天一定回来，给你唱歌。请等着我吧！”鸟儿说完，就向南方飞去了。";
//
//		blog_title[8]="<b>一份疼爱,</b>有多长久？";
//		blog_entity[8]="这个世界五彩缤纷，这个红尘浪漫镌永，我将自己置身世外，立于红尘却疏于红尘。孤独地张望，心中是空洞，眼里是迷茫，目无表情地看红尘来去梦一场，没有悲伤也无所谓快乐，只是彻骨的麻木，无法苏醒，也无法温暖，冷冷的心冷冷地感受着这个冷冷的世界。";
//
//		blog_title[9]="<b>嘟嘟</b>的这些话";
//		blog_entity[9]="亲爱的嘟嘟，你必须找到除了爱情之外，能够使你用双脚坚强站在大地上的东西。 你要找到谋生的方式。天才都不是科班，但，不是科班，连龙套都跑不了。";
//		FastDateFormat df = FastDateFormat.getInstance("yyyy-MM-dd HH:mm:ss");
//		String createTime = df.format(new java.util.Date());
//		for(int i=0;i<10;i++){
//			Blog blog = new Blog();
//			blog.setBlogFlag(i+1);
//			blog.setBlogTitleName(blog_title[i]);
//			blog.setBlogSummary(blog_entity[i]);
//			blog.setRecomment(1);
//			blog.setBlogClassify(1);
//			blog.setSort(i+1);
//			blog.setBlogAuthor("马琴");
//			blog.setCreateTime(createTime);
//			blog.setUpdateTime(createTime);
//			blogService.insert(blog);
//		}
		
		
		
//		FastDateFormat df = FastDateFormat.getInstance("yyyy-MM-dd HH:mm:ss");
//		String createTime = df.format(new java.util.Date());
//		String name[] = new String[5];
//		name[0]="无聊消谴";
//		name[1]="自恋情节";
//		name[2]="童话故事";
//		name[3]="乱七八糟";
//		for(int i=0;i<4;i++){
//			BlogClassify blogClassify = new BlogClassify();
//			blogClassify.setBlogClassifyName(name[i]);
//			blogClassify.setCreateTime(createTime);
//			blogClassify.setUpdateTime(createTime);
//			blogClassify.setSort(i+1);
//			blogClassifyService.insert(blogClassify);
//		}
		return "index";
	}
	
}
