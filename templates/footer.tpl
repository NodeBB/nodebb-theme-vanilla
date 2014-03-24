	</div><!--END container -->

	<!-- IMPORT partials/modals/upload_picture_modal.tpl -->

	<div id="alert_window"></div>

	<footer id="footer" class="container footer">
		{footerHTML}
		<div class="copyright">
			Copyright &copy; 2014 <a target="_blank" href="https://www.nodebb.com">NodeBB Forums</a> | <a target="_blank" href="//github.com/designcreateplay/NodeBB/graphs/contributors">Contributors</a>
		</div>
	</footer>

	<script src="{relative_path}/socket.io/socket.io.js"></script>
	<script src="{relative_path}/nodebb.min.js?{cache-buster}"></script>
	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor',
				'buzz': '../../vendor/buzz/buzz.min'
			}
		});
	</script>
	<script>
		require(['forum/footer']);
	</script>
</body>
</html>
