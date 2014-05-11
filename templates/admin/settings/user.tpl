	<div class="tab-pane" id="user">
		<form>
			<div class="alert alert-warning">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowRegistration" checked> <strong>Allow registration</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowLocalLogin" checked> <strong>Allow local login</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="privateUserInfo"> <strong>Make user info private</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="disableSignatures"> <strong>Disable signatures</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="profile:convertProfileImageToPNG"> <strong>Convert profile image uploads to PNG</strong>
					</label>
				</div>

				<div class="form-group">
					<label>Default Gravatar Image</label>
					<select class="form-control" data-field="defaultGravatarImage">
						<option value="">default</option>
						<option value="identicon">identicon</option>
						<option value="mm">mystery-man</option>
						<option value="monsterid">monsterid</option>
						<option value="wavatar">wavatar</option>
						<option value="retro">retro</option>
					</select>
				</div>

				<div class="form-group">
					<label>Custom Gravatar Default Image</label>
					<input id="customGravatarDefaultImage" type="text" class="form-control" placeholder="A custom image to use instead of gravatar defaults" data-field="customGravatarDefaultImage" /><br />
					<input data-action="upload" data-target="customGravatarDefaultImage" data-route="{relative_path}/admin/uploadgravatardefault" type="button" class="btn btn-default" value="Upload"></input>
				</div>

				<div class="form-group">
					<label>Days to remember user login sessions</label>
					<input type="text" class="form-control" data-field="loginDays" placeholder="14" />
				</div>
				<div class="form-group">
					<label>Maximum User Image File Size</label>
					<input type="text" class="form-control" placeholder="Maximum size of uploaded user images in kilobytes" data-field="maximumProfileImageSize" />
				</div>
				<div class="form-group">
					<label>Minimum Username Length</label>
					<input type="text" class="form-control" value="2" data-field="minimumUsernameLength">
				</div>
				<div class="form-group">
					<label>Maximum Username Length</label>
					<input type="text" class="form-control" value="16" data-field="maximumUsernameLength">
				</div>
				<div class="form-group">
					<label>Minimum Password Length</label>
					<input type="text" class="form-control" value="6" data-field="minimumPasswordLength">
				</div>
				<div class="form-group">
					<label>Maximum Signature Length</label>
					<input type="text" class="form-control" value="255" data-field="maximumSignatureLength">
				</div>
				<div class="form-group">
					<label>Forum Terms of Use <small>(Leave blank to disable)</small></label>
					<textarea class="form-control" data-field="termsOfUse"></textarea>
				</div>
			</div>
		</form>
	</div>