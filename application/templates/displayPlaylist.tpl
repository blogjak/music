

<div class="playlist-content">
	<div class="playlist-header">
		<div class="playlist-cover">
			<a href="#" onclick="javascript:afficher_cacher('popin_cover');"><img src="{$albumCover}"></a>
		</div>
		<div class="playlist-info">
			<p class="playlist-title">{$albumTitle}</p>
			<p class="playlist-author">Auteur</p>
			<script>var js_load = {$js_load_all_playlist};</script>
			<a class="playlist-button-playall" href="javascript:load_playlist(js_load)" onclick="javascript:afficher('jp-playlist');">Play album</a>
			<a href="#"  class="playlist-button-download" onclick="javascript:afficher_cacher('popinDownloadAlbum');">Download</a>
			<div class="linkAlbum"><a href="displayAlbums.php" class="playlist-button-back">Back</a></div>			
		</div>
		
	</div>
	<div class="playlist-tracks">
		<div class="playlist-tracks-title">Titres des pistes</div>

{$i = 0}
<table width="100%">
{section name=sec1 loop=$arrayAlbums}
		<tr><td width="90%"><script>var js_load_track_{$i} = {$array_json_tracks[sec1]};</script>
		<div class="playlist-tracks-grey1"><img align="center" src="images/icon_track.png">{$arrayAlbums[sec1].trackTitle}</td><td class="playlist-tracks-grey1">{$arrayAlbums[sec1].trackFileSize}
		</td><td><a href="javascript:add_track(js_load_track_{$i})"><img border="0" src="images/add.png"></a></td><td><a href="javascript:load_track(js_load_track_{$i})"><img border="0" src="images/play.png"></a></div>
		<!--{$i++}--></td></tr>
{/section}
</table>
	</div>
</div>

<div id="popin_cover" class="popin_cover" style="visibility: hidden;"> 
	<div  class="popin_cover_close linkAlbum" ><a href="displayPlaylist.php?albumID={$albumID}"><img src="images/close_popin.png"></a></div>
	<div class="playlist-title">Change album cover</div>
	<div class="playlist-author">Please input the album cover and click on the submit button. Please choose a square image (it will look nicer :-)</div><br /><br />
	<iframe class="iframeCover_content" src="popinLoadImageCover.php?albumID={$albumID}"></iframe>

</div>

<div id="popinDownloadAlbum" class="popinDownloadAlbum" style="visibility: hidden;"> 
	<div  class="popinpopinDownloadAlbum_close linkAlbum" ><a href="displayPlaylist.php?albumID={$albumID}"><img src="images/close_popin.png"></a></div>
	<div class="playlist-title">Download playlist</div>
	<div class="playlist-author">Please click on the button to download the playlist in zip file.</div><br /><br />
	<iframe class="iframeCover_content" src="popinDownloadAlbum.php?albumID={$albumID}"></iframe>

</div>