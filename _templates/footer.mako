## -*- coding: utf-8 -*-

<style media="screen">
  .k-footer-p {
    text-align: center;
    color: #aaa;
    font-size: .8rem;
  }
  .k-footer-a {
    text-align: center;
    color: #EE3987 !important;
    font-size: .8rem;
  }
</style>
<p id="credits" class="k-footer-p">
  Last updated ${self.getTime()}&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/KavinHan/ofSiteCN/commit/${self.getLastCommitHash()}">${self.getLastCommitHash()}</a>
</p>

<p class="k-footer-p">这里是openframeworks<a class="k-footer-a" href="http://openframeworks.cc">官网</a>的中文版</p>
<p class="k-footer-p">
  需要大家的帮助。^^
  <br />
  如果你是会英文的oFer，请来<a class="k-footer-a" href="https://github.com/KavinHan/ofSiteCN">这里</a>帮助大家。
</p>

% if bf.config.blog.disqus.enabled:
<script type="text/javascript">
//<![CDATA[
(function() {
		var links = document.getElementsByTagName('a');
		var query = '?';
		for(var i = 0; i < links.length; i++) {
			if(links[i].href.indexOf('#disqus_thread') >= 0) {
				query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
			}
		}
		document.write('<script charset="utf-8" type="text/javascript" src="http://disqus.com/forums/${bf.config.blog.disqus.name}/get_num_replies.js' + query + '"></' + 'script>');
	})();
//]]>
</script>
% endif



<!--tracking -->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-71029288-1");
pageTracker._trackPageview();
} catch(err) {}</script>

<%def name="getTime()">
  <%
    from time import gmtime, strftime
    currentTime = strftime("%A, %d %B %Y %H:%M:%S UTC", gmtime())
  %>
${currentTime}
</%def>

<%def name="getLastCommitHash()">
<%
    import subprocess
    p1 = subprocess.Popen(["git", "log", "-1"], stdout=subprocess.PIPE)
    out = p1.communicate()
    hash = out[0][len("commit "):out[0].find('\n')].strip()
%>
${hash}
</%def>
