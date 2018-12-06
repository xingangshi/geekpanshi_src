<ul class="post-copyright">
  <script src="//cdn.bootcss.com/clipboard.js/1.5.10/clipboard.min.js"></script>
  <script src="https://cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <li class="post-copyright-author">
    <strong>{{ __('post.copyright.author') + __('symbol.colon') }}</strong>
    <a rel="external nofollow" href="/about"> {{ post.author | default(config.author) }} </a>
    <strong>{{ "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp微信公众号"  + __('symbol.colon')  }}</strong>
    <a rel="external nofollow" href="https://mp.weixin.qq.com/s/5O5jaUKrFLy0aHCN70LWFQ"> {{ post.author | default(config.author) }} </a>
  </li>
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

