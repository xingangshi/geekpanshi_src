<ul class="post-copyright">
  <script src="//cdn.bootcss.com/clipboard.js/1.5.10/clipboard.min.js"></script>
  <script src="https://cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

  <li class="post-copyright-license">
    <font color="blue" size=3><strong>看完本文有收获吗？请转发和分享给你身边更多的人，谢谢。</br></strong></font>
    <font color="black" size=3>欢迎关注 “ <a rel="external nofollow" href="https://mp.weixin.qq.com/s/5O5jaUKrFLy0aHCN70LWFQ"> {{ post.author | default(config.author) }} </a>“，坚持价值投资、终身学习，践行家庭教育。内容覆盖：技术、读书、时间管理、项目管理、互联网和人文思考。</br></font>
    <font color="red" size=3><strong>长按下方图片，菜单弹出后，选择“识别图中二维码”，可快速关注，谢谢。</br></strong></font>
    <img src="https://i.imgur.com/y75ujlJ.png"  alt="长按扫码关注我的公众号" />
  </li>

  <!--
  <li class="post-copyright-author">
    <strong>{{ __('post.copyright.author') + __('symbol.colon') }}</strong>
    <a rel="external nofollow" href="/about"> {{ post.author | default(config.author) }} </a>
    <strong>{{ "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp微信公众号"  + __('symbol.colon')  }}</strong>
    <a rel="external nofollow" href="https://mp.weixin.qq.com/s/5O5jaUKrFLy0aHCN70LWFQ"> {{ post.author | default(config.author) }} </a>
  </li>
  -->
  <li>
    <strong><span>本文标题： </span></strong><a rel="external nofollow" href="{{ url_for(page.path) }}">{{ page.title }}</a>
  </li>
  <li class="post-copyright-link">
    <strong>{{ __('post.copyright.link') + __('symbol.colon') }}</strong>
    <a rel="external nofollow" href="{{ post.url | default(post.permalink) }}" title="{{ post.title }}">{{ post.url | default(post.permalink) }}</a>
    <span class="copy-path"  title="点击复制文章链接"><i class="fa fa-clipboard" data-clipboard-text="{{ page.permalink }}"  aria-label="复制成功！"></i></span>
  </li>
  <li class="post-copyright-license">
    <strong>{{ __('post.copyright.license_title') + __('symbol.colon') }} </strong>
    {{ __('post.copyright.license_content', theme.post_copyright.license, theme.post_copyright.license) }}
  </li>

</ul>
<script>
    var clipboard = new Clipboard('.fa-clipboard');
    $(".fa-clipboard").click(function(){
      clipboard.on('success', function(){
        swal({
          title: "",
          text: '复制成功',
          icon: "success",
          showConfirmButton: true
          });
  });
    });
</script>

