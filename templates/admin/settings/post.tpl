	<div class="tab-pane" id="post">
		<form>
			<div class="alert alert-warning">
				<strong>Post Delay</strong><br /> <input type="text" class="form-control" value="10000" data-field="postDelay"><br />
				<strong>Minimum Title Length</strong><br /> <input type="text" class="form-control" value="3" data-field="minimumTitleLength"><br />
				<strong>Maximum Title Length</strong><br /> <input type="text" class="form-control" value="255" data-field="maximumTitleLength"><br />
				<strong>Minimum Post Length</strong><br /> <input type="text" class="form-control" value="8" data-field="minimumPostLength"><br />
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="disableSignatures"> <strong>Disable signatures</strong>
					</label>
				</div>
				<strong>Chat Messages To Display</strong><br /> <input type="text" class="form-control" value="50" data-field="chatMessagesToDisplay"><br />
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowGuestPosting"> <strong>Allow guests to post without logging in</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowFileUploads"> <strong>Allow users to upload regular files</strong>
					</label>
				</div>
				<strong>Maximum File Size</strong><br /> <input type="text" class="form-control" value="2048" data-field="maximumFileSize"><br />

				<h3>Composer Settings</h3>
				<p>
					The following settings govern the functionality and/or appearance of the post composer shown
					to users when they create new topics, or reply to existing topics.
				</p>
				<div class="checkbox">
					<label for="composer:showHelpTab">
						<input type="checkbox" id="composer:showHelpTab" data-field="composer:showHelpTab" checked />
						Show "Help" tab
					</label>
				</div>
				<div class="checkbox">
					<label for="composer:allowPluginHelp">
						<input type="checkbox" id="composer:allowPluginHelp" data-field="composer:allowPluginHelp" checked />
						Allow plugins to add content to the help tab
					</label>
				</div>
				<div class="form-group">
					<label for="composer:customHelpText">Custom Help Text</label>
					<textarea class="form-control" id="composer:customHelpText" data-field="composer:customHelpText" rows="5"></textarea>
				</div>
			</div>
		</form>
	</div>