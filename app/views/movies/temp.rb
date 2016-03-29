



<%= image_tag @movie.movie_image.url(:large), :id => "cropbox" %>

<h4>Preview:</h4>
<div style="width:100px; height:100px; overflow:hidden">
  <%= image_tag @movie.movie_image.url(:large), :id => "preview" %>
</div>
<div>
<% form_for @movie do |f| %>
  <%= f.cropbox :avatar %>
  <%= f.crop_preview :avatar %>
  <%= f.submit 'Save' %>
<% end %>
</div>

<script type="text/javascript" charset="utf-8">
$(function() {
  $('#cropbox').Jcrop({
    onChange: update_crop,
    onSelect: update_crop,
    setSelect: [0, 0, 500, 500],
    aspectRatio: 1
  });
});

function update_crop(coords) {
  var rx = 100/coords.w;
  var ry = 100/coords.h;
  $('#preview').css({
    width: Math.round(rx * <%= @movie.movie_image_geometry(:large).width %>) + 'px',
    height: Math.round(ry * <%= @movie.movie_image_geometry(:large).height %>) + 'px',
    marginLeft: '-' + Math.round(rx * coords.x) + 'px',
    marginTop: '-' + Math.round(ry * coords.y) + 'px'
  });
  var ratio = <%= @movie.movie_image_geometry(:original).width %> / <%= @movie.movie_image_geometry(:large).width %>;
  $("#crop_x").val(Math.round(coords.x * ratio));
  $("#crop_y").val(Math.round(coords.y * ratio));
  $("#crop_w").val(Math.round(coords.w * ratio));
  $("#crop_h").val(Math.round(coords.h * ratio));
}
</script>
