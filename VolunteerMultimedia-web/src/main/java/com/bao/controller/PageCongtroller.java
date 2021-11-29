package com.bao.controller;

import com.bao.entity.*;
import com.bao.service.*;
import com.bao.vo.VActivityVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/web")
public class PageCongtroller {

    @Resource
    private AppPIService appPIService;

    @Resource
    private NetworkPIService networkPIService;

    @Resource
    private NetworkPVService networkPVService;

    @Resource
    private AssistService assistService;

    @Resource
    private SeekHelpService seekHelpService;

    @Resource
    private BrandActivityService brandActivityService;

    @Resource
    private VActivityService vActivityService;

    @Resource
    private VolunteerService volunteerService;

    @Resource
    private VolunteerNetworkService volunteerNetworkService;


    /**
     * 跳转志愿者-上传视频
     * @return
     */
    @RequestMapping("/toUploadVideo.html")
    public String toUploadVideo(Model model, Principal principal){
        //查询当前登录用户
        if (principal != null) {
            Volunteer volunteer = volunteerService.getVolunteerByName(principal.getName());
            model.addAttribute("volunteer",volunteer);
        }
        return "uploadVideo";
    }

    /**
     * 跳转志愿者APP-项目介绍
     * @return
     */
    @RequestMapping("/toAppPI.html")
    public String toAppPI(Model model) {
        AppPI appPI = appPIService.findAppPI();
        model.addAttribute("appPI",appPI);
        return "/volunteerApp/projectIntroduction";
    }

    /**
     * 跳转志愿者APP-新闻专栏
     * @return
     */
    @RequestMapping("/toAppNC.html")
    public String toAppNC(Model model) {
        List<NewsC> newsCList = volunteerNetworkService.findNewsCList();
        List<HotNews> hotNewsList = volunteerNetworkService.findHotNewsList();
        List<HotPhoto> hotPhotoList = volunteerNetworkService.findHotPhotoList();
        model.addAttribute("newsCList",newsCList);
        model.addAttribute("hotNewsList",hotNewsList);
        model.addAttribute("hotPhotoList",hotPhotoList);
        return "/volunteerNetwork/newsColumn";
    }


    /**
     * 跳转志愿者APP-志愿者招募
     * @return
     */
    @RequestMapping("/toAppVEnlist.html")
    public String toAppVEnlist(Model model, VActivityVo vActivityVo, Principal principal){
        //查询当前登录用户
        if (principal != null) {
            Volunteer volunteer = volunteerService.getVolunteerByName(principal.getName());
            model.addAttribute("volunteer",volunteer);
        }
        List<VActivity> vActivityList = vActivityService.findVActivityList(vActivityVo);
        model.addAttribute("vActivityList",vActivityList);
        return "volunteerApp/volunteerEnlist";
    }

    /**
     * 跳转志愿者APP-活动地图
     * @return
     */
    @RequestMapping("/toAppAMap.html")
    public String toAppPV(Model model, VActivityVo vActivityVo) {
        List<VActivity> vActivityList = vActivityService.findVActivityList(vActivityVo);
        model.addAttribute("vActivityList",vActivityList);
        return "volunteerApp/aMap";
    }

    /**
     * 跳转志愿者网-项目介绍
     * @return
     */
    @RequestMapping("/toNetworkPI.html")
    public String toNetworkPI(Model model) {
        NetworkPI networkPI = networkPIService.findNetworkPI();
        model.addAttribute("networkPI",networkPI);
        return "/volunteerNetwork/projectIntroduction";
    }

    /**
     * 跳转志愿者网-新闻专栏
     * @return
     */
    @RequestMapping("/toNetworkNC.html")
    public String toNetworkNC(Model model) {
        List<NewsC> newsCList = volunteerNetworkService.findNewsCList();
        List<HotNews> hotNewsList = volunteerNetworkService.findHotNewsList();
        List<HotPhoto> hotPhotoList = volunteerNetworkService.findHotPhotoList();
        model.addAttribute("newsCList",newsCList);
        model.addAttribute("hotNewsList",hotNewsList);
        model.addAttribute("hotPhotoList",hotPhotoList);
        return "/volunteerNetwork/newsColumn";
    }

    /**
     * 跳转志愿者网-专题活动
     * @return
     */
    @RequestMapping("/toThematicActivities.html")
    public String toThematicActivities(Model model, VActivityVo vActivityVo) {
        List<VActivity> vActivityList = vActivityService.findVActivityList(vActivityVo);
        model.addAttribute("vActivityList",vActivityList);
        return "volunteerNetwork/thematicActivities";
    }

    /**
     * 跳转志愿者网-宣传视频
     * @return
     */
    @RequestMapping("/toNetworkPV.html")
    public String toNetworkPV(Model model) {
        List<NetworkPV> networkPVList = networkPVService.findNetworkPV();
        model.addAttribute("networkPVList",networkPVList);
        return "volunteerNetwork/promotionalVideo";
    }

    /**
     * 跳转雷锋热线-项目介绍
     * @return
     */
    @RequestMapping("/toLeiFengPI.html")
    public String toLeiFengPI(Model model) {
        model.addAttribute("appPI","");
        return "/leiFengHotline/projectIntroduction";
    }

    /**
     * 跳转雷锋热线-新闻专栏
     * @return
     */
    @RequestMapping("/toLeiFengNC.html")
    public String toLeiFengNC(Model model) {
        List<NewsC> newsCList = volunteerNetworkService.findNewsCList();
        List<HotNews> hotNewsList = volunteerNetworkService.findHotNewsList();
        List<HotPhoto> hotPhotoList = volunteerNetworkService.findHotPhotoList();
        model.addAttribute("newsCList",newsCList);
        model.addAttribute("hotNewsList",hotNewsList);
        model.addAttribute("hotPhotoList",hotPhotoList);
        return "/volunteerNetwork/newsColumn";
    }


    /**
     * 跳转雷锋热线-我要求助
     * @return
     */
    @RequestMapping("/toSeekHelp.html")
    public String toSeekHelp(Model model) {
        List<SeekHelp> seekHelpList = seekHelpService.findSeekHelpList();
        model.addAttribute("seekHelpList",seekHelpList);
        return "leiFengHotline/seekHelp";
    }

    /**
     * 跳转雷锋热线-我要求助-中国绿色煤汇基金会
     * @return
     */
    @RequestMapping("/toChinaGreen.html")
    public String toChinaGreen() {
        return "leiFengHotline/chinaGreen";
    }

    /**
     * 跳转雷锋热线-我要求助-中国红十字基金会
     * @return
     */
    @RequestMapping("/toChinaRed.html")
    public String toChinaRed() {
        return "leiFengHotline/chinaRed";
    }

    /**
     * 跳转雷锋热线-我要求助-中国抚贫基金会
     * @return
     */
    @RequestMapping("/toChinaSP.html")
    public String toChinaSP() {
        return "leiFengHotline/chinaSP";
    }

    /**
     * 跳转雷锋热线-我要帮扶
     * @return
     */
    @RequestMapping("/toAssist.html")
    public String toAssist(Model model) {
        List<Assist> assistList = assistService.findAssistList();
        model.addAttribute("assistList",assistList);
        return "leiFengHotline/assist";
    }

    /**
     * 跳转雷锋热线-品牌活动
     * @return
     */
    @RequestMapping("/toBrandActivity.html")
    public String toBrandActivity(Model model) {
        List<BrandActivity> brandActivityList = brandActivityService.findBrandActivityList();
        model.addAttribute("brandActivityList",brandActivityList);
        return "leiFengHotline/brandActivity";
    }

    /**
     * 跳转雷锋热线-品牌活动-1
     * @return
     */
    @RequestMapping("/toBrandActivity1.html")
    public String toBrandActivity1() {
        return "leiFengHotline/a1";
    }

    /**
     * 跳转雷锋热线-品牌活动-2
     * @return
     */
    @RequestMapping("/toBrandActivity2.html")
    public String toBrandActivity2() {
        return "leiFengHotline/a2";
    }

    /**
     * 跳转雷锋热线-品牌活动-3
     * @return
     */
    @RequestMapping("/toBrandActivity3.html")
    public String toBrandActivity3() {
        return "leiFengHotline/a3";
    }



    /**
     * 跳转雷锋热线-宣传视频
     * @return
     */
    @RequestMapping("/toLeiFengPV.html")
    public String toLeiFengPV(Model model) {
        List<NetworkPV> networkPVList = networkPVService.findNetworkPV();
        model.addAttribute("networkPVList",networkPVList);
        return "volunteerNetwork/promotionalVideo";
    }


    /**
     * 跳转欢迎页面
     * @return
     */
    @RequestMapping("/welcome.html")
    public String toWelcome() {
        return "welcome";
    }

    /**
     * 跳转公益活动-让轮椅飞
     * @return
     */
    @RequestMapping("/toWheelchairFly.html")
    public String toWheelchairFly() {
        return "publicBenefitActivities/wheelchairFly";
    }

    /**
     * 跳转公益活动-名师一堂课
     * @return
     */
    @RequestMapping("/toMasterLesson.html")
    public String toMasterLesson() {
        return "publicBenefitActivities/masterLesson";
    }

    /**
     * 跳转公益活动-睡前讲故事
     * @return
     */
    @RequestMapping("/toBedtimeStories.html")
    public String toBedtimeStories() {
        return "publicBenefitActivities/bedtimeStories";
    }

    /**
     * 跳转公益广告-图说我们的价值观
     * @return
     */
    @RequestMapping("/toOurValues.html")
    public String toOurValues() {
        return "publicServiceAd/ourValues";
    }

    /**
     * 跳转公益广告-讲文明 树新风”公益广告
     * @return
     */
    @RequestMapping("/toNewTrends.html")
    public String toNewTrends() {
        return "publicServiceAd/newTrends";
    }


}
