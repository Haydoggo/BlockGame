GDPC                                                                            /   @   res://.import/Arrow.png-f927d8a9bc0401ae5d680e5784877f9b.stex    �      �       �x����\fy��� S@   res://.import/Block.png-20730aed078a8b8898d394e95f7fff1f.stex   ��      �      &V������/��heI<   res://.import/Icon.png-2c3cef4a9068a1af63d84d4b54324d10.stex��      U      -��`�0��x�5�[D   res://.import/Indicator.png-b171b8f2eef452c9f7c973f19953e921.stex   �     �       ��s.5EȆBC(&�^D   res://.import/PowerBlock.png-55e49161a21ada6e804dcc0fca90c65b.stex  �     *      �q�C�ϵ?	5�F�D   res://.import/PusherBlock.png-258c8366c28f634c9c2c099b9127ed15.stex �           �>\�4��p^ޤ{1D   res://.import/SteamBlock.png-d52702f8e5c78edcd542db8668eb0cb8.stex  �     ,      �?�~d��2�i���@   res://.import/blip.wav-5edbce146827b6d375f8086c258574c8.sample  ��      aC      }�ja��'��5EJQ*<   res://.import/tile.png-484556c5e80e89276f13d51f43be63d4.stexP     t      �3��m��G�J`3��@   res://.import/tone1.ogg-73b33498d5e06fd50cca502ae71e213d.oggstr ��            16�ʫw���p�s�   res://Scenes/Block.tscn �      �      �< ["��@pZ�H���    res://Scenes/BlockerBlock.tscn  �      z      ��~K�ڶ��+��^5h   res://Scenes/Builder.tscn   @            >�n�{��u8h9��   res://Scenes/Game.tscn  `      �      _��Ԅ��W!nx��    res://Scenes/PistonBlock.tscn   @.      �      �C����I��u����    res://Scenes/PowerBlock.tscn@1      F      ��RD�E�^�n��].    res://Scenes/PusherBlock.tscn   �2      !      �M�>q������J�    res://Scenes/SliderBlock.tscn   �9      �        .j�鄹v���   res://Scenes/UI.gd.remap%     $       ]~������A�:��2   res://Scenes/UI.gdc �:      p      a�m��:�gR�{�   res://Scripts/Block.gd.remap@%     (       ��]idO�J���W�   res://Scripts/Block.gdc =      u      ?k<�;��(jw��6`�    res://Scripts/Builder.gd.remap  p%     *       (T� #��$�o��    res://Scripts/Builder.gdc   �H      �      ���F�A�G��*�\v$   res://Scripts/DebugDrawer.gd.remap  �%     .       T��RXD��7��;&    res://Scripts/DebugDrawer.gdc   `]      �      �ʷXM���)I�   res://Scripts/Game.gd.remap �%     '       M�����*+��e��:�   res://Scripts/Game.gdc  Pb      |      Ѭ;��R����B�j��    res://Scripts/Globals.gd.remap   &     *       ���]�_��b���   res://Scripts/Globals.gdc   �u      B      ��Y�(�W��!, $   res://Scripts/PistonBlock.gd.remap  0&     .       ��xr��'�wd=F%�i    res://Scripts/PistonBlock.gdc    {      �
      �������^���6O$   res://Scripts/PusherBlock.gd.remap  `&     .       �7��kO�EN�e!s�    res://Scripts/PusherBlock.gdc   ��      �      ;e���-|�Z{�6�   res://Sounds/blip.wav.import �      �      �D��#Ǉ��2���    res://Sounds/tone1.ogg.import   ��      %      ����1��E��K��    res://Sprites/Arrow.png.import   �      �      I�
��'���&��@J    res://Sprites/Block.png.import   �      �      y�Q�q\8����   res://Sprites/Icon.png  �&     �      G1?��z�c��vN��    res://Sprites/Icon.png.import        �      Za��97����	��$   res://Sprites/Indicator.png.import  P     �      !�����L}C���2E*$   res://Sprites/PowerBlock.png.import       �      ��y6�-C"�.79�$   res://Sprites/PusherBlock.png.import�     �      �zj�C �":��k���$   res://Sprites/SteamBlock.png.import �     �      �LU��+�כ �kQg    res://Sprites/tile.png.import   �!     �      N3/k��� �R��R�x   res://default_env.tres  `$     �       %Lҿ�`����,�   res://project.binary�3     W#      ;�ǹ�iVU�����    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/Block.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Block.gd" type="Script" id=2]

[node name="Node2D" type="Node2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Label" type="Label" parent="."]
visible = false
margin_right = 40.0
margin_bottom = 25.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Tween" type="Tween" parent="."]
      [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scenes/Block.tscn" type="PackedScene" id=1]
[ext_resource path="res://Sprites/Icon.png" type="Texture" id=2]

[node name="Node2D" instance=ExtResource( 1 )]
can_move = false
type = "Blocker"

[node name="Sprite" parent="." index="0"]
texture = ExtResource( 2 )

[node name="Label" parent="." index="1"]
visible = true
      [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scripts/DebugDrawer.gd" type="Script" id=1]
[ext_resource path="res://Scripts/Builder.gd" type="Script" id=2]
[ext_resource path="res://Sprites/Icon.png" type="Texture" id=3]
[ext_resource path="res://Sprites/tile.png" type="Texture" id=4]

[node name="BuildZone" type="Node2D"]
script = ExtResource( 2 )

[node name="Background" type="Node2D" parent="."]
z_index = -2

[node name="BackgroundTiles" type="TextureRect" parent="Background"]
modulate = Color( 1, 1, 1, 0.121569 )
margin_right = 1024.0
margin_bottom = 1024.0
texture = ExtResource( 4 )
stretch_mode = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Blocks" type="Node2D" parent="."]
position = Vector2( 32, 32 )

[node name="DebugDrawer" type="Node2D" parent="."]
visible = false
script = ExtResource( 1 )

[node name="Tween" type="Tween" parent="."]

[node name="Cursor" type="Sprite" parent="."]
modulate = Color( 1, 1, 1, 0.498039 )
position = Vector2( -16.1496, 108.636 )
texture = ExtResource( 3 )
centered = false
   [gd_scene load_steps=22 format=2]

[ext_resource path="res://Sprites/Indicator.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Game.gd" type="Script" id=2]
[ext_resource path="res://Sprites/Block.png" type="Texture" id=3]
[ext_resource path="res://Sprites/SteamBlock.png" type="Texture" id=4]
[ext_resource path="res://Sprites/Icon.png" type="Texture" id=5]
[ext_resource path="res://Sprites/PowerBlock.png" type="Texture" id=6]
[ext_resource path="res://Sprites/PusherBlock.png" type="Texture" id=7]
[ext_resource path="res://Scenes/UI.gd" type="Script" id=8]

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.435294, 0.490196, 0.607843, 1 )
corner_radius_top_left = 8
corner_radius_top_right = 8
corner_radius_bottom_right = 8
corner_radius_bottom_left = 8
shadow_size = 8

[sub_resource type="InputEventKey" id=2]
scancode = 49

[sub_resource type="ShortCut" id=3]
shortcut = SubResource( 2 )

[sub_resource type="InputEventKey" id=4]
scancode = 50

[sub_resource type="ShortCut" id=5]
shortcut = SubResource( 4 )

[sub_resource type="InputEventKey" id=6]
scancode = 51

[sub_resource type="ShortCut" id=7]
shortcut = SubResource( 6 )

[sub_resource type="InputEventKey" id=8]
scancode = 52

[sub_resource type="ShortCut" id=9]
shortcut = SubResource( 8 )

[sub_resource type="InputEventKey" id=10]
scancode = 53

[sub_resource type="ShortCut" id=11]
shortcut = SubResource( 10 )

[sub_resource type="PanoramaSky" id=12]

[sub_resource type="Environment" id=13]
background_mode = 2
background_sky = SubResource( 12 )

[node name="Game" type="Node2D"]
z_index = 1
script = ExtResource( 2 )
indicator_path = NodePath("UI/MarginContainer/HBoxContainer/VBoxContainer/PlayingIndicator")
GUI_path = NodePath("UI/MarginContainer/HBoxContainer/GUIPanel")

[node name="BuildZones" type="Node2D" parent="."]
z_index = -1

[node name="Camera2D" type="Camera2D" parent="."]
position = Vector2( 458.759, 241.285 )
current = true
__meta__ = {
"_editor_description_": ""
}

[node name="Timer" type="Timer" parent="."]
wait_time = 0.3
autostart = true
__meta__ = {
"_editor_description_": ""
}

[node name="UI" type="CanvasLayer" parent="."]
script = ExtResource( 8 )

[node name="MarginContainer" type="MarginContainer" parent="UI"]
margin_right = 939.0
margin_bottom = 374.0
custom_constants/margin_right = 16
custom_constants/margin_top = 16
custom_constants/margin_left = 16
custom_constants/margin_bottom = 16
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HBoxContainer" type="HBoxContainer" parent="UI/MarginContainer"]
margin_left = 16.0
margin_top = 16.0
margin_right = 923.0
margin_bottom = 400.0
size_flags_vertical = 0

[node name="GUIPanel" type="MarginContainer" parent="UI/MarginContainer/HBoxContainer"]
margin_right = 96.0
margin_bottom = 384.0

[node name="Panel" type="Panel" parent="UI/MarginContainer/HBoxContainer/GUIPanel"]
margin_right = 96.0
margin_bottom = 384.0
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MarginContainer" type="MarginContainer" parent="UI/MarginContainer/HBoxContainer/GUIPanel"]
margin_right = 96.0
margin_bottom = 384.0
custom_constants/margin_right = 16
custom_constants/margin_top = 16
custom_constants/margin_left = 16
custom_constants/margin_bottom = 16

[node name="Buttons" type="VBoxContainer" parent="UI/MarginContainer/HBoxContainer/GUIPanel/MarginContainer"]
margin_left = 16.0
margin_top = 16.0
margin_right = 80.0
margin_bottom = 368.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="BlockButton" type="TextureButton" parent="UI/MarginContainer/HBoxContainer/GUIPanel/MarginContainer/Buttons"]
margin_right = 64.0
margin_bottom = 64.0
action_mode = 0
shortcut = SubResource( 3 )
texture_normal = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="BlockerButton" type="TextureButton" parent="UI/MarginContainer/HBoxContainer/GUIPanel/MarginContainer/Buttons"]
margin_top = 72.0
margin_right = 64.0
margin_bottom = 136.0
action_mode = 0
shortcut = SubResource( 5 )
texture_normal = ExtResource( 5 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PusherButton" type="TextureButton" parent="UI/MarginContainer/HBoxContainer/GUIPanel/MarginContainer/Buttons"]
margin_top = 144.0
margin_right = 64.0
margin_bottom = 208.0
action_mode = 0
shortcut = SubResource( 7 )
texture_normal = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PistonButton" type="TextureButton" parent="UI/MarginContainer/HBoxContainer/GUIPanel/MarginContainer/Buttons"]
margin_top = 216.0
margin_right = 64.0
margin_bottom = 280.0
action_mode = 0
shortcut = SubResource( 9 )
texture_normal = ExtResource( 7 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PowerButton" type="TextureButton" parent="UI/MarginContainer/HBoxContainer/GUIPanel/MarginContainer/Buttons"]
margin_top = 288.0
margin_right = 64.0
margin_bottom = 352.0
action_mode = 0
shortcut = SubResource( 11 )
texture_normal = ExtResource( 6 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="UI/MarginContainer/HBoxContainer"]
margin_left = 104.0
margin_right = 179.0
margin_bottom = 384.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="UI/MarginContainer/HBoxContainer/VBoxContainer"]
margin_right = 75.0
margin_bottom = 25.0
size_flags_vertical = 0
text = "Howdy"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PlayingIndicator" type="TextureRect" parent="UI/MarginContainer/HBoxContainer/VBoxContainer"]
modulate = Color( 1, 0, 0, 1 )
margin_top = 33.0
margin_right = 75.0
margin_bottom = 41.0
texture = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Tips" type="Label" parent="UI/MarginContainer/HBoxContainer"]
margin_left = 187.0
margin_right = 907.0
margin_bottom = 335.0
size_flags_horizontal = 3
size_flags_vertical = 0
text = "LMB: Place
RMB: Delete
MMB: pan
C: Connect
Shift + C: Disconnect
R: Rotate
Shift + R: Anti rotate
Spacebar: Place power block
E: Execute game tick
Shift E: Toggle tick clock
Q: Sample block"
align = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Tween" type="Tween" parent="."]

[node name="WorldEnvironment" type="WorldEnvironment" parent="."]
environment = SubResource( 13 )
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
            [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scenes/PusherBlock.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/PistonBlock.gd" type="Script" id=2]
[ext_resource path="res://Sprites/Block.png" type="Texture" id=3]
[ext_resource path="res://Sprites/Indicator.png" type="Texture" id=4]

[node name="Node2D" instance=ExtResource( 1 )]
script = ExtResource( 2 )
type = "Piston"

[node name="Sprite" parent="." index="0"]
texture = ExtResource( 3 )

[node name="Indicator" type="Sprite" parent="." index="4"]
modulate = Color( 1, 0.839216, 0, 1 )
position = Vector2( -16, -16 )
texture = ExtResource( 4 )

[node name="GhostRod" type="Sprite" parent="." index="5"]
scale = Vector2( 1, 0.3 )
z_index = -1
texture = ExtResource( 3 )
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scenes/Block.tscn" type="PackedScene" id=1]
[ext_resource path="res://Sprites/PowerBlock.png" type="Texture" id=2]

[node name="Node2D" instance=ExtResource( 1 )]
conducting = true
type = "Power"

[node name="Sprite" parent="." index="0"]
texture = ExtResource( 2 )
          [gd_scene load_steps=11 format=2]

[ext_resource path="res://Scripts/PusherBlock.gd" type="Script" id=1]
[ext_resource path="res://Scenes/Block.tscn" type="PackedScene" id=2]
[ext_resource path="res://Sprites/Icon.png" type="Texture" id=3]
[ext_resource path="res://Sprites/Arrow.png" type="Texture" id=4]
[ext_resource path="res://Sprites/SteamBlock.png" type="Texture" id=5]

[sub_resource type="Gradient" id=1]
offsets = PoolRealArray( 0, 0.993031, 1 )
colors = PoolColorArray( 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1 )

[sub_resource type="GradientTexture" id=2]
gradient = SubResource( 1 )

[sub_resource type="Curve" id=3]
min_value = 0.2
_data = [ Vector2( 0, 0.2 ), 0.0, 0.0, 0, 0, Vector2( 1, 1 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="CurveTexture" id=4]
curve = SubResource( 3 )

[sub_resource type="ParticlesMaterial" id=5]
emission_shape = 2
emission_box_extents = Vector3( 1, 32, 1 )
flag_disable_z = true
spread = 30.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 600.0
initial_velocity_random = 1.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = 1000.0
linear_accel_random = 1.0
scale = 0.2
scale_curve = SubResource( 4 )
color_ramp = SubResource( 2 )

[node name="Node2D" instance=ExtResource( 2 )]
script = ExtResource( 1 )
can_rotate = true
can_activate = true
type = "Pusher"

[node name="Sprite" parent="." index="0"]
texture = ExtResource( 5 )

[node name="DirectionIndicator" type="Sprite" parent="." index="3"]
z_index = 1
texture = ExtResource( 4 )
offset = Vector2( 8, 0 )
__meta__ = {
"_editor_description_": ""
}

[node name="Particles2D" type="Particles2D" parent="DirectionIndicator" index="0"]
position = Vector2( 24, 0 )
z_index = -2
emitting = false
amount = 101
lifetime = 0.1
one_shot = true
explosiveness = 0.5
process_material = SubResource( 5 )
texture = ExtResource( 3 )
               [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Block.tscn" type="PackedScene" id=1]

[node name="Node2D" instance=ExtResource( 1 )]

[node name="Label" parent="." index="1"]
visible = true
               GDSC            Z      ����������Ķ   ������Ŷ   ��������������Ķ   ������������Ķ��   �������ڶ���   ������Ŷ   �����������ض���   �����϶�   ���Ŷ���   ������Ŷ   ����������Ŷ   ���Ŷ���   ߶��   �����ض�   ������¶   ���Ӷ���   ���������¶�   ���������Ӷ�             pressed       button                                       '      ,      2      D   	   H   
   I      P      X      3YY5;�  W�  �  �  �  �  T�  PQY0�  PQV�  ;�  �	  T�
  T�  PQ�  ;�  �  )�  �  V�  �  T�  P�  RR�  RL�  L�  MMQ�  �  �  YY0�  P�  QV�  �  PQT�  �  Y`GDSC   6      _   %     ���ӄ�   ��������Ӷ��   ������Ŷ   ��������Ӷ��   �������ض���   �����������ض���   �����������ض���   ���������������Ŷ���   ����������Ӷ   ���������¶�   �����������Ӷ���   �������Ӷ���   ���������Ӷ�   �����������Ӷ���   ����������϶   ���������Ѷ�   ���Ӷ���   �����ض�   �������Ŷ���   �����׶�   �������Ӷ���   ��Ҷ   ����Ӷ��   ������������Ŷ��   �����Ŷ�   ����Ķ��   ����ݶ��   �����������ض���   ���������������������ض�   ������������ݶ��   ���Ҷ���   �����Ҷ�   ���������������ݶ���   ����Ӷ��   ��ڶ   ����ض��   �������������������϶���   ����¶��   �����������������ض�   �������ڶ���   �������ض���   �����Ӷ�   ��������Ҷ��   ���������Ӷ�   ���Ӷ���   �����¶�   �������������Ŷ�   �������������Ӷ�   ��������������ض   ��������   ������Ŷ   ��������¶��   ��������������¶   ��¶                   Block               position                       
                              !   	   '   
   /      9      ?      E      K      Q      W      ]      ^      c      d      k      o      u      x      ~            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /      0   !  1   *  2   1  3   5  4   9  5   ?  6   @  7   F  8   L  9   U  :   ^  ;   b  <   c  =   l  >   r  ?   {  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z     [     \     ]      ^   #  _   3YY;�  �  T�  YY;�  �  T�  YY5;�  V�  9�  Y5;�  V�  Y;�  LMY5;�  �	  PQY5;�
  �  T�	  PQY8;�  Y8;�  �  Y8;�  �  Y8;�  Y8;�  �  Y8;�  �  YY;�  �  YY0�  P�  QV�  &�  V�  �  �  T�  �  (V�  �  �  T�  YY0�  PQV�  �
  T�  T�  PQ�  )�  �	  PQT�  PQV�  &�  T�  PQV�  �
  T�  L�  T�  M�  YY0�  P�  QV�  &�  T�  P�  Q�  V�  �  T�  P�  Q�  �  T�  T�  PQYY0�   P�  QV�  &�  T�  P�  Q�  V�  �  T�  T�!  PQ�  �  T�!  P�  QYY0�  P�"  V�  QV�  �  �"  �  W�#  T�$  PR�  R�  R�  �  R�  Q�  W�#  T�%  PQ�  �  YY0�&  P�"  V�  QV�  W�#  T�'  PQ�  �  �"  �  �  �"  �  �(  �  �  YY0�)  PQV�  )�*  �  V�  �*  T�  T�!  PQ�  �
  T�  T�!  P�  Q�  �+  PQYY0�,  P�-  V�  QV�  ;�.  LM�  &�/  P�.  R�-  QV�  )�  �.  V�  �  T�  �-  �  �  PQ�  .�  (V�  .�  YY0�/  P�.  V�  R�-  V�  QV�  �  &�.  T�  PQ�  V�  .�  (V�  �.  T�  PQ�  �  �  &�  �  V�  .�  �  �  ;�0  T�  �-  �  &�  P�  T�1  R�
  T�2  QT�3  P�0  QV�  .�  �  �  )�*  �  V�  &�*  T�/  P�.  R�-  QV�  .�  �  �  ;�4  �
  T�  T�5  P�0  Q�  &�4  �  V�  &�4  T�/  P�.  R�-  QV�  .�  �  .Y`           GDSC   H      �        ���ӄ�   ��������Ӷ��   ������Ŷ   ��������Ӷ��   ������Ŷ   ����Ŷ��   ��������   ��������������ض   ��������۶��   ������ٶ   ������������Ѷ��   ��������������Ҷ   �����Ŷ�   �����Ӷ�   �����Ķ�   �����Ķ�   ����������Ŷ   ���������Ӷ�   �����϶�   �������Ӷ���   ������Ӷ   ���������Ҷ�   ��������������Ŷ   ��������Ӷ��   ������Ŷ   ������Ӷ   �����������������������ض���   �������ض���   ���   ������Ҷ   ����¶��   ���������������������Ҷ�   ����������������Ҷ��   ��¶   ����������������������Ҷ   ���������������ݶ���   ������������ݶ��   ����ݶ��   �������Ӷ���   �����Ŷ�   ��������Ҷ��   �����������������ض�   ���������Ӷ�   �������ض���   ��������ض��   ������Ҷ   ���Ӷ���   ���Ӷ���   ���ⶶ��   ����ⶶ�   �涶   ��������   ����������϶   �����Ӷ�   �������Ӷ���   ���������������Ŷ���   �����������Ŷ���   ���������������Ŷ���   �����������ض���   �����������Ӷ���   �����Ҷ�   ��������������ݶ   ����Ķ��   ���Ҷ���   �����ض�   ��Ķ   ��������Ķ��   �������ض���   ���������Ѷ�   ����������Ӷ   �����Ӷ�   �����������ض���                    
   /root/Game        tex                   connect       shift      
   disconnect     
   left_click        res       rotate_block_CW    	   ui_accept         Power         pipette       ui_left       ui_right      ui_up         ui_down       right_click                          
                                  	   (   
   0      5      :      ?      D      E      L      R      Y      a      b      e      f      l      x      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .   '  /   +  0   2  1   7  2   :  3   A  4   F  5   J  6   N  7   O  8   P  9   Q  :   R  ;   S  <   T  =   U  >   d  ?   l  @   w  A   |  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T     U     V     W   !  X   "  Y   +  Z   5  [   ;  \   F  ]   R  ^   [  _   \  `   ]  a   f  b   i  c   r  d   x  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {     |     }     ~          �     �   %  �   +  �   1  �   <  �   B  �   I  �   O  �   T  �   `  �   b  �   h  �   j  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   3YY;�  �  T�  YY;�  �  T�  YY8;�  V�  PRQYY;�  V�  T�  Y;�  V�  T�  Y;�  �  Y;�	  �  Y;�
  �  Y;�  �  YY5;�  NOY5;�  �  Y5;�  W�  Y5;�  �  T�  YY;�  YY0�  PQV�  �  �  L�  P�  QT�  M�  �  T�  �  L�  M�  W�  �  T�  �  �  YY0�  PQV�  �  �  L�  P�  QT�  M�  �  T�  �  L�  M�  �  T�  �  �  �  �  T�  �  �  �  �  PQ�  �  T�  P�  �  T�  �  �  QT�  P�  T�  �  Q�  �  P�  �  QT�  PQ�  �  &�  T�  P�  QV�  �
  �  T�   P�  Q�  �  �  T�!  P�  Q�  �  &�  T�   P�  QV�  �	  �  T�!  P�  Q�  �  &�  T�"  P�  QV�  &�  �  �	  �  �	  �  V�  &�
  V�  �  T�#  P�	  Q�  �?  P�	  Q�  (V�  �  T�$  P�	  Q�  �?  P�  Q�  �  �  �  �	  �  �  YYYYY�  �  &�  T�   P�
  Q�  T�   P�  Q�  T�  P�
  QV�  &�  T�!  P�  Q�  V�  ;�%  V�  �%  �  L�  MT�&  PQ�  W�'  T�(  P�%  Q�  �%  T�)  P�  Q�  �  L�  M�%  �  �  &�  T�  P�  QV�  ;�%  �  �%  �  T�!  P�  Q�  &�%  �  V�  &�%  T�*  V�  ;�+  Z�  �  &�  T�   P�  QV�  �+  Z�  �  �%  T�,  �%  T�,  T�-  P�+  Q�  �  &�  T�  P�  QV�  &�  T�!  P�  Q�  V�  ;�%  V�  �%  �  L�  ML�  MT�&  PQ�  W�'  T�(  P�%  Q�  �%  T�)  P�  Q�  �  L�  M�%  �  �  &�  T�  P�  QV�  ;�%  �  T�!  P�  Q�  &�%  �  V�  �  P�  QT�  �%  T�.  �  �  �  L�  P�  QT�  M�  �  T�  �  L�  M�  �  �  &�  T�  P�  QV�  ;�%  �  �%  �  T�!  P�  Q�  &�%  �  V�  �%  T�/  P�  T�0  Q�  �  &�  T�  P�  QV�  ;�%  �  �%  �  T�!  P�  Q�  &�%  �  V�  �%  T�/  P�  T�1  Q�  �  &�  T�  P�  QV�  ;�%  �  �%  �  T�!  P�  Q�  &�%  �  V�  �%  T�/  P�  T�2  Q�  �  &�  T�  P�  QV�  ;�%  �  �%  �  T�!  P�  Q�  &�%  �  V�  �%  T�/  P�  T�3  QY�  &�  T�   P�  QV�  ;�%  �  �%  �  T�!  P�  Q�  &�%  �  V�  &�%  T�4  V�  �%  T�5  PQYY0�6  PQV�  ;�7  LM�  ;�8  NO�  ;�9  LM�  )�%  W�'  T�:  PQV�  &�%  T�;  V�  �9  T�<  P�%  Q�  )�=  �9  V�  ;�>  �  �  &�7  T�?  P�=  Q�  V�  ,�  &�=  T�@  V�  ,�  )�A  L�  T�1  R�  T�2  R�  T�0  R�  T�3  MV�  ;�B  �  T�!  P�=  T�C  �A  Q�  &�B  �  V�  &�B  T�D  �B  T�@  V�  �>  �  �  �7  T�<  P�=  Q�  �8  L�=  M�>  �  �  �  )�=  �9  V�  ;�E  �8  T�!  P�=  Q�  &�E  �  V�  �=  T�>  �  �  �  �  )�=  �9  V�  ;�E  �8  T�!  P�=  Q�  �F  PQ�  &�E  �  V�  �=  T�>  �  �  �  )�%  W�'  T�:  PQV�  �%  T�@  �  �  �%  T�G  �%  T�C  Y` GDSC      
      �      ���ӄ�   ��������Ӷ��   ������Ŷ   ������Ķ   ���������¶�   �������Ŷ���   �����׶�   �����Ӷ�   ��������   ����ݶ��   �����������ض���   ��������Ҷ��   ���������������Ŷ���   ��������Ӷ��   ��������������ض   ����Ӷ��   ���������������Ķ���   ������������Ѷ��   ��Ҷ   ��������۶��   �������ն���   ����Ŷ��   ������ٶ   	   ../Blocks        �@                           (                                                                          	   !   
   '      2      :      K      L      S      Y      _      `      h      o      �      �      �      �      �      �      �      �      �      �      3YYY5;�  �  T�  Y5;�  �  PQYY0�  P�  QV�  �  PQYY0�  PQV�  )�	  WT�
  PQV�  )�  �	  T�  V�  �  P�	  T�  R�  T�  R�  T�  R�  Q�  �  ;�  �  T�  �  &�  T�  V�  �  �  T�  �  �  &�  T�  �  V�  ;�	  �  T�  �  �  P�	  T�  R�  R�  R�  ZR�  R�  R�  R�  Q�  �  P�	  T�  R�  T�  R�  R�  Q�  &�  T�  V�  )�  �	  T�  V�  �  P�  T�  R�	  R�  R�  ZR�  R�  R�  R�  Q�  �  �  &�  T�  �  V�  ;�	  �  T�  �  �  P�	  T�  R�  R�  R�  ZR�  R�  R�  R�  QY`             GDSC   \      �   ~     ���ӄ�   ��������Ӷ��   ������Ŷ   ��������Ӷ��   �����������ض���   ��������   ��������������������   ������Ѷ   ����������������Ӷ��   ��������������Ҷ   ���������Ӷ�   �������������޶�   �������޶���   �����׶�   �����ׄ򶶶�   ����Ķ��   ����Ķ��   ����������Ŷ   ���������Ŷ�   �����϶�   �����Ҷ�   ��������Ӷ��   �嶶   ���������������Ҷ���   ��������������¶   �����������������ض�   ������Ķ   ������Ķ   ߶��   ���������Ӷ�   �������Ӷ���   ��������Ҷ��   �������ض���   ������Ŷ   �������Ӷ���   ��������Ķ��   �������Ӷ���   ����ض��   �������������������϶���   ���Ӷ���   ��Ҷ   ����¶��   �����������ض���   �������Ŷ���   �����׶�   �����Ķ�   ������Ӷ   �����Ӷ�   �����������¶���   �����������������ض�   ����   ���¶���   �������������������ض���   ��������Ӷ��   ��������¶��   ����Ŷ��   �����������������������ض���   �����������¶���   ������Ŷ   ����¶��   ���������������������Ҷ�   ����������������Ҷ��   ���۶���   ����   ��������������Ķ   ���Ӷ���   �����Ӷ�   �����¶�   ����¶��   ���������¶�   ����������Ķ   ������������������������ض��   �����������Ӷ���   ��������������������ض��   ������Ҷ   �����������ζ���   ���������������   ��������������������   ����������������¶��   ��������   ������Ķ   ����ݶ��   ��������Ҷ��   ���������������Ŷ���   ��������Ӷ��   ��������������ض   ����Ӷ��   ���������������Ķ���   ������������Ѷ��   ��������۶��   �������ն���   ������ٶ                       Block               USERNAME      Hayden                                       res://Scenes/Builder.tscn         modulate  333333�?      play      shift         middle_click  �������?      Blocks       �@                       (                      
                        "      '   	   ,   
   1      2      7      8      ?      F      G      N      U      \      ]      c      j      r      x      �      �      �      �      �      �      �       �   !   �   "     #   
  $     %     &     '     (   .  )   5  *   ?  +   E  ,   F  -   M  .   N  /   R  0   \  1   d  2   j  3   k  4   u  5   }  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H      I     J     K     L     M     N   #  O   $  P   (  Q   ,  R   0  S   1  T   >  U   ?  V   C  W   G  X   H  Y   S  Z   X  [   _  \   h  ]   n  ^   t  _   z  `   }  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t     u   	  v      w   /  x   5  y   =  z   T  {   U  |   V  }   ^  ~   e     |  �   3YY;�  �  T�  Y;�  �  T�  YY;�  V�  T�  Y;�  V�  T�  Y;�  Y;�  �  Y;�	  �  YY;�
  �  YY8P�  Q;�  Y8P�  Q;�  YY5;�  W�  Y5;�  W�  Y5;�  W�  YY0�  PQV�  �  T�  �  �  �  T�  �  �  �  �  T�  �  &�  T�  P�  Q�  V�  �  T�  P�  Q�  �  ;�  L�  P�  R�  QR�  P�  �  R�  QR�  P�  R�  �  QR�  P�  �  R�  �  QM�  ;�  L�  P�	  R�	  QR�  P�
  R�	  QR�  P�	  R�
  QR�  P�
  R�
  QM�  )�  �K  P�  QV�  ;�  ?P�  QT�  PQ�  W�  T�  P�  Q�  �  T�   �  L�  M�  �  T�!  �  L�  M�  �  T�  PQYYY0�"  PQV�  ;�#  �$  P�  Q�  W�%  T�&  P�#  R�  R�  T�'  R�  T�(  R�  Q�  W�%  T�)  PQ�  )�  �  T�*  PQV�  �  T�"  PQYY0�+  P�,  QV�  �  �  �  �  )�  �  T�*  PQV�  �  T�-  T�.  �  �  �  T�/  �  �  �  �  �0  PQT�1  PQ�  ;�2  �$  P�  Q�  ;�3  �  P�2  T�4  R�2  T�5  Q�  &�3  T�6  P�  QV�  )�  �  T�*  PQV�  ;�7  �  T�8  PQ�  ;�9  �  P�  T�  R�  T�!  �  T�  Q�  &�9  T�6  P�7  QV�  �  T�/  �  �  T�:  PQ�  �  �  �  �  ,�  �  &�;  T�<  P�  QV�  &�;  T�=  P�  QV�  &�  V�  �  T�  �  �  �  �  (V�  �  T�  �  �  �  �  (V�  �	  �  �  &�;  T�=  P�  QV�  �  T�   P�  �  Q�  T�>  �  �  &�	  V�  �	  �  �  �"  PQ�  �  W�?  �@  T�5  �0  PQT�A  �  �  �  �  �  �B  PQYY0�C  P�D  V�E  QX=V�  ;�F  �  �  ;�7  �G  PQ�  ;�H  �7  �  T�   �  &�D  4�I  V�  &�D  T�J  V�  /�D  T�K  V�  �L  V�  �  T�>  �F  �  �  T�   �7  �H  �F  �  �M  V�  �  T�>  �F  �  �  T�   �7  �H  �F  YY0�N  PQV�  �	  YY0�O  PQV�  )�P  W�  T�*  PQV�  )�Q  �P  T�$  P�  QT�*  PQV�  )�R  �Q  T�S  V�  �T  P�Q  T�U  R�R  T�U  R�  T�V  R�  Q�  �  ;�W  �  T�V  �  &�P  T�X  V�  �W  �  T�(  �  �  &�P  T�Y  �  V�  ;�Q  �P  T�Y  �  �Z  P�Q  T�U  R�  R�  R�  ZR�  R�W  R�  RQ�  �T  P�Q  T�U  R�G  PQR�W  R�  Q�  &�P  T�X  V�  )�R  �Q  T�S  V�  �Z  P�R  T�U  R�	  R�  R�  ZR�  R�W  R�  RQ�  �  �  &�P  T�[  �  V�  ;�Q  �P  T�[  �  �Z  P�Q  T�U  R�  R�  R�  ZR�  R�W  R�  RQY`    GDSC            �      ���Ӷ���   ��������Ӷ��   ��������Ӷ��   ��������Ŷ��   ����������Ŷ   ���������Ŷ�   ���������Ŷ�   ��������������Ŷ   ������������Ŷ��   ��������������Ŷ   �������������Ŷ�   �������������Ŷ�   ������������Ŷ��   ����������Ŷ     �B  �������?      res://Scenes/Block.tscn       res://Scenes/BlockerBlock.tscn        res://Scenes/PusherBlock.tscn         res://Scenes/PistonBlock.tscn         res://Scenes/PowerBlock.tscn      res://Sprites/Block.png       res://Sprites/Icon.png        res://Sprites/SteamBlock.png      res://Sprites/PusherBlock.png         res://Sprites/PowerBlock.png      Block         res       tex       name      Blocker       Pusher        Piston        Power                      	                               (   	   0   
   8      9      A      I      Q      Y      a      b      {      �      �      �      �      3YY;�  VY;�  V�  YY;�  ?P�  QY;�  ?P�  QY;�  ?P�  QY;�  ?P�  QY;�  ?P�  QYY;�  ?P�  QY;�	  ?P�  QY;�
  ?P�	  QY;�  ?P�
  QY;�  ?P�  QYY5;�  N�  VN�  V�  R�  V?P�  QR�  V�  OR�  �  VN�  V�  R�  V?P�  QR�  V�  OR�  �  VN�  V�  R�  V?P�	  QR�  V�  OR�  �  VN�  V�  R�  V?P�
  QR�  V�  OR�  �  VN�  V�  R�  V?P�  QR�  V�  OOY`              GDSC   3      V   �     ���������Ҷ�   �������Ҷ���   �������������ݶ�   �����϶�   ��������Ķ��   ������Ҷ   �����ض�   ����Ķ��   �����������ݶ���   �����������Ӷ���   �����Ŷ�   ��¶   �������ض���   ��������ض��   ��������������ݶ   ���������������Ŷ���   ���Ҷ���   ���������������ݶ���   ���������ݶ�   ������������Ŷ��   ���������Ҷ�   ������������ݶ��   ���������۶�   ����������Ҷ   ���������Ӷ�   ��������Ķ��   �������Ӷ���   ���Ӷ���   ���Ҷ���   ��Ҷ   ������Ŷ   ��������Ŷ��   �������Ӷ���   ���������¶�   ��������Ҷ��   �����������������ض�   ������Ӷ   �������Ҷ���   �������ض���   ����Ӷ��   ����ض��   �������������������϶���   ��������Ӷ��   ��������Ӷ��   ����¶��   ����������϶   �����Ӷ�   ��������   ��������Ҷ��   ����Ӷ��   ���������Ӷ�      res://Scripts/PusherBlock.gd                             position                   	                                 	      
   &      '      +      -      1      8      F      K      W      [      `      c      g      p      t      x      |      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2     3     4     5     6     7     8   &  9   /  :   4  ;   ;  <   A  =   G  >   R  ?   e  @   l  A   r  B   }  C   ~  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   3YY5;�  Y5;�  �  Y5;�  �  YY0�  PQV�  -�  Y0�  P�  QV�  �  &�  V�  .�  �  �  �  &�  �  V�  ;�  �	  T�
  T�  P�  �  Q�  ;�  �  �  &�  T�  P�  Q�  V�  �  �  �  �  P�  Q�  (V�  �  �  �  &�  P�  R�  QV�  �  PQ�  �  �  �  �  PQ�  �  PQ�  &�  �  V�  T�  P�  Q�  �  PQ�  �  �  '�  �  V�  ;�  �	  T�
  T�  PT�  �  Q�  &T�  T�  P�  Q�  V�  &�  P�  R�  RLMQV�  �  PQ�  �  PQ�  �  P�  Q�  �  �  �  (V�  �  PQ�  �  �  �  �  &�  V�  �  �  �  W�  T�  �  T�  �  (V�  �  �  �  W�  T�  �  T�  �  �  &�  �  V�  W�  T�  �  T�  YY0�  PQV�  �  T�  T�   PQ�  �!  PQT�"  PQ�  �  PQ�  T�#  P�  Q�  T�  �  �  T�$  �  �  W�%  T�&  �  T�'  PQ�  W�(  T�)  PW�%  R�  R�  R�  �*  R�+  Q�  W�(  T�,  PQ�  T�-  �  �  �	  T�
  LT�  MYY0�  PQVY�  T�.  PQ�  W�(  T�)  PW�%  R�  R�  R�  T�/  R�+  Q�  W�(  T�,  PQYY0�.  PQV�  �  &�  V�  )�0  T�  V�  �0  T�  T�1  PQ�  �	  T�
  T�1  PT�  Q�  T�2  PQ�  �  )�0  �  V�  �0  T�  T�1  PQ�  �	  T�
  T�1  P�  Q�  �2  PQY`           GDSC   $      -   .     ��������ض��   ����ⶶ�   ������Ķ   ����Ķ��   ��������Ķ��   ���������۶�   �����������������Ķ�   ��������ń�   ������¶   �������Ѷ���   ������Ķ   ����ض��   �������ڶ���   �������ض���   ����Ӷ��   ���������Ӷ�   �������ٶ���   ��������Ӷ��   �������������������϶���   �����������󶶶�   �������ⶶ��   ����¶��   ���������ݶ�   �����������ݶ���   ��Ķ   �������������Ŷ�   �������������Ӷ�   ���Ҷ���   ����ݶ��   �������ض���   ������Ҷ   �����������Ӷ���   �����Ŷ�   ��¶   �����������ض���   ������������Ŷ��      res://Scripts/Block.gd                     rotation      �������?                                           $      -      .   	   7   
   >      I      S      ]      e      ~      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %      &     '     (     )     *   !  +   (  ,   ,  -   3Y5;�  T�  9�  Y5;�  �  9�  YY0�  PQV�  W�  �  T�  PQ�  W�  �  T�	  �  YY0�  P�
  V�  QV�  W�  T�  PQ�  W�  T�  T�  PQ�  ;�  T�  P�
  Q�  ;�  W�  T�  �  �  �
  T�  PQ�  W�  T�  PW�  R�  R�  R�  R�  R�  T�  R�  T�  Q�  W�  T�  PQYY0�  P�  R�  V�  R�  LMQV�  &�  �  V�  .�  �  &�  T�  P�  R�  QV�  &�  T�  PQ�  V�  .�  �  )�  �  V�  �  T�  �  �  .�  �  (V�  �  LM�  &�  P�  R�  QV�  &�  T�  P�  Q�  V�  .�  �  )�  �  V�  �  T�  �  �  .�  �  (V�  .�  YY0�  P�  QV�  �  �  �  &�  V�  �  PQ�  ;�  �  T�   T�!  P�"  Q�  �  P�  RQ�  �#  PQY`       RSRC                    AudioStreamSample                                                                 
      resource_local_to_scene    resource_name    data    format 
   loop_mode    loop_begin 	   loop_end 	   mix_rate    stereo    script        
   local://1          AudioStreamSample          
B        ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~�~�|�|�{�{�y�y�x�x�w�w�u�u�t�t�s�s�q�q�p�p�o�o�n�n�l�l�k�k�j�j�i�i�g�g�f�f�e�e�d�d�b�b�a�a�`�`�_�_�^�^�^�^�`�`�c�c�e�e�h�h�k�k�n�n�r�r�u�u�y�y�}�}�����������������������������������������������������������������    ������������������������������������������������}�}�v�v�p�p�i�i�c�c�\�\�V�V�P�P�J�J�D�D�>�>�8�8�2�2�,�,�'�'�"�"�!�!� � �����������������������������������������������
�
�	�	������������������� � � � �������������������������������������������������������������%�%�+�+�2�2�9�9�@�@�G�G�O�O�W�W�_�_�h�h�r�r�|�|�����������������������������& & = = I I ? ? * * ����������������������������v�v�k�k�`�`�V�V�L�L�B�B�9�9�0�0�'�'�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������&�&�1�1�=�=�I�I�U�U�c�c�q�q���������������������) ) H H ` ` s s s s c c M M / / ��������������������o�o�_�_�P�P�C�C�5�5�)�)���������������������������������������������������������������~�~�}�}�}�}�|�|�{�{�{�{�z�z�z�z�y�y�x�x�x�x�w�w�v�v�v�v�u�u�u�u�t�t�s�s�s�s�r�r�q�q�q�q�p�p�p�p�o�o�n�n�n�n�m�m�m�m�l�l�k�k�k�k�j�j�j�j�i�i�h�h�h�h�g�g�g�g�f�f�e�e�e�e�k�k�t�t�}�}�����������������������������������������������������#�#�2�2�B�B�S�S�e�e�y�y�������������$ $ M M j j � � � � � � � � � � o o S S , , ������������y�y�d�d�P�P�>�>�-�-�������������������������������������������������w�w�l�l�b�b�W�W�M�M�C�C�?�?�>�>�>�>�=�=�=�=�<�<�<�<�;�;�;�;�:�:�9�9�9�9�8�8�8�8�7�7�7�7�6�6�6�6�5�5�4�4�4�4�3�3�3�3�2�2�2�2�1�1�1�1�0�0�/�/�/�/�.�.�.�.�-�-�-�-�,�,�,�,�+�+�+�+�*�*�)�)�)�)�.�.�8�8�B�B�L�L�W�W�b�b�m�m�y�y������������������������������������� � ���#�#�5�5�J�J�`�`�y�y���������  N N q q � � � � � � � � � � � � � � � � s s O O   ��������w�w�]�]�F�F�0�0���
�
�����������������������������������r�r�e�e�X�X�L�L�?�?�3�3�'�'������������������������� � � � �������������������������������������������������������������������������������������������������������������������������"�"�.�.�;�;�H�H�U�U�b�b�p�p�~�~���������������������������������.�.�F�F�a�a�������������H H s s � � � � � � � � � � � � � � � � � � � � o o A A ��������y�y�Z�Z�?�?�'�'�������������������������������}�}�m�m�^�^�O�O�A�A�3�3�%�%���
�
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������'�'�6�6�E�E�U�U�e�e�v�v�������������������������������/�/�K�K�k�k���������: : o o � � � � � � � � ++##� � � � � � � � � � ] ]   ��������^�^�@�@�%�%�������������������������������q�q�a�a�Q�Q�A�A�2�2�$�$���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������!�!�0�0�?�?�O�O�_�_�o�o�������������������������������%�%�@�@�_�_���������  ^ ^ � � � � � � � � � � &&::==--� � � � � � � � n n 9 9 ��������j�j�K�K�/�/�������������������������������w�w�g�g�W�W�G�G�8�8�)�)�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������+�+�:�:�I�I�Y�Y�i�i�z�z�����������������������������6�6�S�S�t�t���������K K z z � � � � � � � � 		33GGQQFF33� � � � � � � � y y I I ��������s�s�R�R�5�5�����������������������������{�{�k�k�[�[�K�K�<�<�-�-�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������%�%�4�4�C�C�S�S�c�c�s�s�������������������������������+�+�G�G�f�f���������0 0 i i � � � � � � � � � � ++??RRbb[[KK77##� � � � � � � � � � T T ��������z�z�X�X�;�;� � ���������������������������~�~�n�n�^�^�N�N�?�?�0�0�!�!�����������������������������������������������������������������������������������������������������������������������������������������������������������������������-�-�=�=�L�L�\�\�l�l�}�}���������������������������!�!�;�;�Y�Y�|�|���������V V � � � � � � � � � � ##77KK]]oonn__MM99%%� � � � � � � � � � Y Y 	 	 ����~�~�[�[�>�>�#�#�
�
�����������������������������o�o�_�_�O�O�@�@�1�1�#�#�����������������������������������������������������������������������������������������������������������������������������������������������������������������*�*�9�9�I�I�Y�Y�i�i�y�y�����������������������������2�2�N�N�n�n���������> > q q � � � � � � � � ++>>QQccttxxjjYYGG44

� � � � � � � � � � W W   ��������^�^�A�A�'�'�������������������������������y�y�i�i�Z�Z�K�K�=�=�/�/�!�!���������������������������������������������������������������������������������������������������������������������������������������������
�
���%�%�4�4�B�B�Q�Q�`�`�o�o�������������������������������/�/�I�I�f�f���������  \ \ � � � � � � � � � � --??QQaarryynn__MM;;))  � � � � � � � � { { Q Q ������������b�b�F�F�-�-��� � �����������������������������u�u�g�g�X�X�K�K�=�=�0�0�#�#���
�
�����������������������������������������������������������������������������������������������������������������������������"�"�/�/�=�=�K�K�Y�Y�g�g�v�v���������������������������������,�,�E�E�`�`�~�~���������E E q q � � � � � � � � � � --??OO__ooxxoo``PP??..� � � � � � � � � � q q F F ������������c�c�H�H�0�0�������������������������������������r�r�e�e�W�W�J�J�=�=�1�1�%�%���������������������������������������������������������������������������������������������������������������!�!�-�-�:�:�G�G�T�T�b�b�p�p�~�~���������������������������������*�*�A�A�Z�Z�u�u���������( ( \ \ � � � � � � � � � � � � 

,,<<LL[[jjuunn``QQAA11  � � � � � � � � � � � � f f 9 9 ����������c�c�J�J�3�3�������������������������������������~�~�q�q�d�d�X�X�L�L�@�@�4�4�(�(�������������������������������������������������
�
���!�!�-�-�9�9�E�E�R�R�^�^�k�k�y�y�������������������������������������)�)�>�>�U�U�o�o�������������G G n n � � � � � � � � � � � � 

**99HHVVddooii]]NN??00  � � � � � � � � � � � � y y V V $ $ ��������{�{�a�a�J�J�5�5�!�!���������������������������������������}�}�p�p�e�e�Y�Y�N�N�B�B�7�7�-�-�"�"�������������������������������������������$�$�/�/�:�:�F�F�R�R�]�]�i�i�v�v�����������������������������������������)�)�=�=�R�R�i�i�������������. . Z Z z z � � � � � � � � � � � � &&55CCPP]]hhccWWJJ<<..� � � � � � � � � � � � � � j j F F ������������x�x�`�`�K�K�7�7�$�$�����������������������������������������}�}�r�r�g�g�\�\�Q�Q�G�G�=�=�3�3�-�-�-�-�-�-�-�-�-�-�.�.�.�.�.�.�.�.�.�.�.�.�/�/�/�/�/�/�/�/�/�/�0�0�0�0�0�0�4�4�>�>�I�I�T�T�_�_�j�j�v�v�����������������������������������������	�	���+�+�=�=�Q�Q�f�f�~�~���������  G G h h � � � � � � � � � � � � � � ""//<<IIUU__[[OOCC66((� � � � � � � � � � � � � � u u W W . . ������������t�t�^�^�J�J�8�8�'�'�����������������������������������������������u�u�k�k�a�a�W�W�M�M�D�D�B�B�B�B�B�B�B�B�C�C�C�C�C�C�C�C�C�C�D�D�D�D�D�D�D�D�E�E�E�E�E�E�E�E�E�E�N�N�X�X�c�c�m�m�x�x�������������������������������������������������-�-�>�>�P�P�d�d�y�y�������������0 0 V V r r � � � � � � � � � � � � � � ((44@@LLUUPPEE99--  � � � � � � � � � � � � � � { { a a @ @ ����������������o�o�\�\�J�J�9�9�)�)�����������������������������������������������������y�y�p�p�g�g�^�^�X�X�X�X�X�X�X�X�Y�Y�Y�Y�Y�Y�Y�Y�Y�Y�Z�Z�Z�Z�Z�Z�Z�Z�[�[�[�[�[�[�[�[�`�`�j�j�s�s�}�}�������������������������������������������������#�#�2�2�B�B�R�R�e�e�x�x�������������  F F c c { { � � � � � � � � � � � � � � � �   ++66AAIIDD99..##

� � � � � � � � � � � � � � � � ~ ~ g g L L % % ����������������l�l�[�[�J�J�;�;�-�-�����������������������������������������������������������x�x�o�o�o�o�o�o�o�o�o�o�p�p�p�p�p�p�p�p�q�q�q�q�q�q�q�q�q�q�r�r�r�r�r�r�{�{�������������������������������������������������������)�)�7�7�F�F�V�V�f�f�x�x�����������������5 5 T T l l � � � � � � � � � � � � � � � � � � !!++55;;55++!!� � � � � � � � � � � � � � � � � � ~ ~ i i Q Q 2 2 ����������������{�{�j�j�Z�Z�K�K�=�=�0�0�$�$�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������%�%�1�1�>�>�L�L�Z�Z�i�i�y�y�����������������! ! D D ] ] q q � � � � � � � � � � � � � � � � � � � � ''++%%� � � � � � � � � � � � � � � � � � � � { { i i T T 9 9   ����������������y�y�j�j�[�[�N�N�B�B�6�6�+�+� � �������������������������������������������������������������������������������������������������������������������������������������������������������������$�$�/�/�;�;�G�G�S�S�`�`�n�n�}�}�����������������  5 5 N N b b t t � � � � � � � � � � � � � � � � � � � � � � � � 

� � � � � � � � � � � � � � � � � � � � � � v v e e R R ; ;   ��������������������x�x�j�j�^�^�R�R�G�G�=�=�2�2�)�)���������������������������������������������������������������������������������������������������������������������������������������������(�(�1�1�;�;�F�F�Q�Q�\�\�h�h�t�t�������������������������$ $ ? ? T T e e t t � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � } } p p a a P P < <     ������������������������y�y�n�n�c�c�Y�Y�O�O�F�F�<�<�4�4�+�+�#�#��������������������������������������������������������������������������������������������������������� � ���������'�'�/�/�8�8�@�@�I�I�S�S�\�\�g�g�q�q�|�|�������������������������  2 2 F F V V d d q q } } � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � ~ ~ s s f f Y Y J J 8 8 ! ! ����������������������������}�}�t�t�j�j�a�a�Y�Y�Q�Q�I�I�A�A�:�:�3�3�,�,�%�%�����������������������������������������������������������������������������������%�%�,�,�3�3�;�;�B�B�J�J�Q�Q�Y�Y�b�b�j�j�s�s�}�}���������������������������������$ $ 8 8 G G U U a a l l v v   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � z z p p f f [ [ O O B B 2 2   ������������������������������������|�|�t�t�m�m�f�f�_�_�X�X�R�R�L�L�F�F�@�@�:�:�5�5�/�/�*�*�%�%� � �����������������������������"�"�(�(�-�-�3�3�9�9�?�?�E�E�K�K�R�R�X�X�_�_�f�f�m�m�t�t�{�{�����������������������������������������  , , : : F F Q Q [ [ c c l l t t { { � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   x x p p i i ` ` X X N N D D 9 9 + +   ������������������������������������������������}�}�w�w�r�r�l�l�g�g�b�b�]�]�Y�Y�T�T�O�O�K�K�G�G�C�C�?�?�;�;�:�:�:�:�:�:�;�;�;�;�;�;�<�<�<�<�=�=�=�=�?�?�D�D�I�I�N�N�R�R�W�W�]�]�b�b�g�g�m�m�r�r�x�x�}�}�����������������������������������������������������      - - 7 7 @ @ I I P P W W ^ ^ d d i i o o t t y y ~ ~ � � � � � � � � � � � � � � � � � � � � � � � � � � } } w w r r m m g g a a [ [ T T N N F F ? ? 6 6 - - " "   ��������������������������������������������������������������������������{�{�x�x�t�t�q�q�n�n�j�j�g�g�d�d�d�d�d�d�e�e�e�e�f�f�f�f�g�g�g�g�h�h�h�h�l�l�p�p�t�t�x�x�|�|�������������������������������������������������������������������������������������    ' ' / / 5 5 : : @ @ E E I I M M R R U U Y Y ] ] ` ` c c f f j j l l o o r r s s p p m m i i f f b b ^ ^ Z Z V V R R N N J J E E A A < < 7 7 2 2 , , & &       ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 
             " " % % ' ' ) ) + + - - / / 0 0 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 8 8 6 6 4 4 1 1 / / - - * * ( ( & & $ $ ! !                       ��������������������������������������������������������������������������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               RSRC               [remap]

importer="wav"
type="AudioStreamSample"
path="res://.import/blip.wav-5edbce146827b6d375f8086c258574c8.sample"

[deps]

source_file="res://Sounds/blip.wav"
dest_files=[ "res://.import/blip.wav-5edbce146827b6d375f8086c258574c8.sample" ]

[params]

force/8_bit=false
force/mono=false
force/max_rate=false
force/max_rate_hz=44100
edit/trim=false
edit/normalize=false
edit/loop=false
compress/mode=0
            RSRC                    AudioStreamOGGVorbis                                                                       resource_local_to_scene    resource_name    data    loop    loop_offset    script        
   local://1 �          AudioStreamOGGVorbis          �  OggS         �}      �w>�vorbis    D�      ��      �OggS          �}     � EI�������������2vorbis+   Xiph.Org libVorbis I 20120203 (Omnipresent)   
   TITLE=pongvorbisBCV   cT)F�R�J�s�1F�b�J���BH�sS�9לk��� �SP)�R�Ric�)�RKI%t:'�c[I�֘k�A���RL)ĔR�BS�)ŔRJB%t:�S�J(A��s����c��t�J�$dLBH)��J�SNBH5��R)sRRjA� �B� ��АU   �@�
 P  ������ 2  �(��(�#9�cI�
     �pI�ɱ$K�,K�DQU}�6UU�u]�u]�u 4d   @H��� �dY     F(�BCV    b(9�&��|s��f9h*��tp"��In*��s�9'�s�8�s�rf1h&��s�f)h&��s���Ak���s�9��qF�s���Aj6��s��9j.��s"��Im.��s�9�s�9�s��spN8�s���ZnB�s>�{sB8�s�9�s�9�s�АU    A6�q� H���E�iȤݣ�$hr
�G���R� �T�I)� 4d    !�RH!�RH!�R�!�b�)���
*����2�,��2�,��2밳�:�0�C��KM��Xc���k�Zi���J)��RJ)Y �  d�AF!�R�!��r�)��BCV �     <�sDGtDGtDGtDGtD�s<G�DI�DI�L��LOUՕ][�e��mav��u��u�ׅaY�eY�eY�eY�eY�eY�АU    �B!�RH!�c�1砓PB 4d       �Q�q$Gr$ɒ,I�4K�<��<M�DQM�TEWtEݴEٔM�tM�tUY�]Y�m��m_�m��}��}��}��}��uY H  �H��H��H��8�$�!�     (��8��H�$I��I��Y�fj�gz���!�  @       (��)��)��9�#J�eZ��j�(��뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�.�
 �  БɑI�I��BCV 2   pǐɱ,K�<��<M�DO�LO]�BCV �       0$�R,Gs4I�TK�TM�TKUOUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU5M�4M 4d%   �b��� !%%�����1&!�^!���1��2�r�B��Y D  � �s�9G��9�t����Rg)Řb�(��R��s�RG���b,-v�R���    ,�BCV Q  �1H)�b�9��C�)�s�1�s�9�tR*�tNJ�s�9��sR:'�sNJ'�  �  � �А@� �A�<O�4Q�4OESt]Q4]��<��LSU=�TUSUm�TUY�<�4=�TU�4U�TUY6UU�EU�m�uu�tUݖm��][vQUm�T]�7U��]��}Y�uc�<U�L�u=�te�um[u]]�LS�Mוe�umەe]we��5�t]�Ue�t]�veW�]Y�}�u�ߕe_WeYv]��[ו�t]�WeW7VY�}[ׅ��ua�<OU=�t]�4]Wu]_W]��5Ӕe�um�T]Yve��]W�u�4e�t]�6]W�]Y�}W�u�t]_WeY�UW�uYו��m�7]��UY��W�u��ua�u]>U�}Sv��te�ׅ�Yn]8��u}a�m�XeY9~�X����et]_Xm�VY�_����}�xu]n��̺�������mc�}�Yf_w��:��㩪���+�,���Ƴ��������,�*�±�����,����j�°ڶ1ܾn,�p�k��1�Q�u|_x
��tu]yf]��ut�G8~�  � � �@�!+�8 �$��dY�(Y�(��躢h���i��i�iZ�g��i��)��,i�iZ�f�����h��k�����)˦jʲi��캲m��lۢiʲi��l��,���ۮ�꺤Y��y�ij�g��jʲi���y�jz�h��(��j�����,[�g��試'��j�����*˦�ڲi��l��m�����m�i��m��-��jۮ��,ۺ/i�ij�g��癦i��l��+[����(��扦j��,���ʖ癪'��ꉞk��*˦jڪi��l��-��*ˮm���ʲn��l��j�jʲl˾�ʪ)˦�ڲi��-۲�˲���iʲi��m��.˲m�l��h��m��-��*۲-��,ۺ�ʮo����-�����p�0��l�����+ۺo�2��}DӔeS5m�TUYve��e��}�4m[UU[6MնeY�}Y�ma4M�6UU�MմmY�ma�e�veٷe[�uוu_�}��e�溲�˲���������p��
  p  0�� �  �a�1�R�9�Q�9� d�A!��9!��9���2� ��R���Z!��Rk  8  ؠ)�8@�!+�T  ��X�癢jڲcI�'������H�牢i��m[�'�������牢i����h�����뺺.�����뺲������+���릪���ʮ,�ª��+˲m�°���ʲl۶oܺ������.��1G �	 @6��pR4Xh�J   �0!�B!��RJ!��  0�  `B(4dE '  C)��RJ)��RJ)��RJ)��RJ)��RJ)��RH)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ���RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)�RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��R
 ��p �z0�� H  �QJ)Ɯ�1�c�I()b�9���R��Ri-��9!��Rm�sRZ�1�3礤[�9�RR���kVk�5�ZZ�5לs͹�k�9לs�1לs�9�s�9�s� �48 �ذ:�I�X`�!+�T  �s�9�R�9��"�s�9!T�9�tB�s�9!��9��B!s:� �B�B���A!�J(!�B!�:!�B!�B!�RJ!�B	��P  `� @��#���   ���R΄A�A�A�Q3BL9љbNj3S�9�tjA�^2  �   � (�B�1  A��	�U�����D�D ���H���.\��]BB�X@	88�'�����ST�       � � ""�����������      �  8>����*,.02468:<        ���     @   ��OggS �q      �}     �%;��dj|lrhokffosojpoklqjjhj 
~���(o�  U�*�����^V�-���PР� ���4��� |�> �x�c �����_�abư2_��7�i�6��ܹ����gY�.���u{6�܃��,��5��v��s#�����_}�ͣi�������6�`΄�cW)x����s�����ݤ�YjMEs�,t�t����'D,����g�����72o.Va�;T=�P�� ���j攉*[��Q8+ ��UY����`�N�Y��j�� ��m���}�"?��q�M�Y���Ct�P/�z~p6 �t�r��Su�js����g�,Q�Lك%�`�J���:���O�)���O�������繱���	"���U����Ӑ�f;��2�qn�ZL����1^�}:7g {5 ;< /  sx���9��R�F�  jI	 ` ��v��W7��.hmmM�NA�H�<�q6��\ ���W����f���%w�	c�С�[���	���,�5 \/�Rէl���8<8�? �K�� x�, $9@C� ��  @� ��;  �  e    W0��  �*F�D���H � h��	&�^o�fj��g�W�-;+�y%�z\��p�P�������:N?Fj�$Z~f ܼ>`x�X{%�w����`6L c��� �ߕ)o@-��N� `oGW�+�� >���K��S�߃�ޘ�D?�L`�yu�
i��5[����ߌ�\�>?�d�it�{�#�&{F�%��܊����@��wXA�}{M�g����nkS�c�����
�:(�v�_ 	�ĺ��{+?\@��V��[(���^E���0��Y?¢�>c>��|���<�l��|,;;A����*���#k����)'l�����	�<���Ô<�$/ �Nc�� �����?HX@�HW%�`[(I�vp�C��}m�kj���Bg�f�gIs�#;�tr9���_O6S�����{��	��i R���B����K�j��vp�A{Z1��{/ ��qB�H ���������o� 9a�a
[	�PH�a̘ͭ�_=�i�b�/U�h��X>��� !SJ�'�g���4[��ڢ��/>����f����%�C� ���i�{TU ������P9���PV�D��z���)E�����d��gj�o�m�j��c�/u��"�,��>���Gl�R7��W��y�PB
�Fd0�u#>�R{\�]�0< ���u ���}i?�A�	��J���D�Bj
�Y(�%��ݝ��|�޹�ڲ��mo�NYewBx�	\��(@��#�&鮒�tN	)�E�mo��i)CS� ,$�ժ� ������ �Ɨh9�$�P򒵷U��%�2�!6�]��B�����>Ӫu��R]���>�
�A���ɏ4sȑ��}�k�b�	.~��^��t�x 	��
�: ���u���
���ǔA�m�d���Y�7>n���+���4�J�L)_�xҒ{>��G�G����wtg�w��{���{�M���r�K@�Vo�&�O��9� �����_�S����*�m���r����i�v$��S���^��[m?���r�/��f3o���~|?�͟+�j־�|�Q�_G*3�� �
�tܴ�\}1$�{���bB �����_$�,aL-Ia���m�$&��N��9��9��6}����y4���0��V�yo�'�������?�~3(�s��xl�
[��mɜ���Gh��ˋi�n�� @0X�: ^��9�cb	[AIP��K�	yI�C�mM�Z ��9�J%�{C:���?�̩�]g���k��u�������Z}��▻˙ANڕ&���S�'$�
w' �9�%�~��u�*@LX�n
[��B!Mc�r?«Uy�	��)��eL�ЛF��>�fc�ܳ*�
<�> 7�B�%՘�]�U�M��l�������/��V��M% �����_T 㧕�!!	+�(�{�ס��Q(�ʔ�l� �SwZ�f��A:��"�V��8m����?b�������d�/�g�O40ʗӘKN�/gڡ�|4:i���t $0]�F���}i?�A����Jl�$a�B�B�oNm�!n.�s�L�Z�O(�/6y��4ם�dp�$�BO�i���6�D�ߙ�d�qz����\O����&��'��6����I�G ~��:�'\@�0~Z��T[!�����j�%ñ뤙#�>���O5͙��ra��vï�_w����NA�0�_��&ߜ��Du�B�E�_L�<�V� �y$��	��/~����h�ajEz(B�m��*&�a�,N�x���VԆ7vzb�v������
j��a���O�/T �no��b��א]DB��-\����q�atd^]��3��<̰@�^^��<�w	I����q���BUԦ!*7�Fy:y�850��W/�=:���������y�˳�[�l�4�y�����(P>�q���5��ޯ��/�=D�}׋�N��"5��Ī ����m_���0��DWJ�fA�E?�%D/f'珐"ۻRͯ+�j##�lh��������uA�M� �1�'2��A�8�7Bu�΃��� d� X+VJ���޶o� ��,|X���J�*��@|Z���Ў��]A�D|������a���~�Ԇ�W�1@��~���xG�z"D�˛�"�(�H���Ӭl�i��- �x xk0� ������r�����
��Wĝ8{VV�Gv,ۙ���s}z�`��{�i�]���2vFn�����͵{���s䠆>���5�M�O�� '=C:C � &�~��{�(��Ēd�Yq��.���qf�ŠwP{�x��;a��2��ʣ�b��1'�;�V]�t���'����*�p���� ��)��M�
x�UE= t �P��! ����,_� n  �     $�  RSRC         [remap]

importer="ogg_vorbis"
type="AudioStreamOGGVorbis"
path="res://.import/tone1.ogg-73b33498d5e06fd50cca502ae71e213d.oggstr"

[deps]

source_file="res://Sounds/tone1.ogg"
dest_files=[ "res://.import/tone1.ogg-73b33498d5e06fd50cca502ae71e213d.oggstr" ]

[params]

loop=false
loop_offset=0
           GDST              �   PNG �PNG

   IHDR         ��K   sRGB ���   �IDAT8���K
�0@�HnT̮�UA�`�Z*^Ǌ�?1:>H&�7�|�7�p1Q��V����PW��BQ2%���-�.ӍH 7%ձ�����gޑ����.���y_ "W�u��
 ��s�k�Y�,��]�`7���2��;2"2��    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Arrow.png-f927d8a9bc0401ae5d680e5784877f9b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Arrow.png"
dest_files=[ "res://.import/Arrow.png-f927d8a9bc0401ae5d680e5784877f9b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST@   @           f  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  IDATx����0E��{���dw0�q7`Gq���R�H[��Y��r�M� (s����*�����X�0u�T������s�[����������'_f� 3�qWTwO^_4���|y�"�6��i�&ˀ0�~����:��e�PZG32O�� q��	`� ��� Z@�H�z�$@<��	(,�̀�"yh����� ��@���S$?�&�0��$�<��:��4�����:I�vl&Ƭ{8.����9 ��g$��    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Block.png-20730aed078a8b8898d394e95f7fff1f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Block.png"
dest_files=[ "res://.import/Block.png-20730aed078a8b8898d394e95f7fff1f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Icon.png-2c3cef4a9068a1af63d84d4b54324d10.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Icon.png"
dest_files=[ "res://.import/Icon.png-2c3cef4a9068a1af63d84d4b54324d10.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST              �   PNG �PNG

   IHDR         ���   sRGB ���   EIDAT����	�@�t!zЛ��\��O�Q�Fg��	�$�^Z�b���$H���;��U�Z�]o�(z��D�    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Indicator.png-b171b8f2eef452c9f7c973f19953e921.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Indicator.png"
dest_files=[ "res://.import/Indicator.png-b171b8f2eef452c9f7c973f19953e921.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST@   @             PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��[HQ�?3��/D�E�����$�)$"*���� ��n&�e!i��T��d���0�A��"zȲ��[e�%]Զ��tvwv�3����s��/3��D�a(eP�U>
��3��Fgdgg��b����
���p&>>ްܯ �*���4f@ <���FӴ�ǃ
 �5�A�`TS�;+�9����=�bN �/���g���1uB��1% ^1p������A��Zac�Q��-�l���jF�'Ĥ �U�3��i�9�p���|�H����s1'��ע�Rҡc�g��z!!�%I�j��ȀO�k����$8�o��	�����{�����~�_�X?#>FU)�=�r�TVpx_��l�iy!e��Yy��[	�H K!=���;O�H�iѫI��`r/��f����~�A�Xq�=;�/X��X[oy��p?@F�@k�]�����G�e�v�K_3\�
�?� �s�P1��bh�Q�ݫEX��Na14/EĥRh�����֗�f(*��o�������6�tQ�಄ͦ�m���"o��z@����E%[��ٲ�T�\�������\3,���T¼Y���ئ���g�K`Ӻ���,�Ʈ"d��f�R4~��h��������A<�z�mg�W�ʞ$���܃���ȴ���-�Y�v�f�̭���gç���~@��W@}{^��0����){Y�r��WTB�����/��**�͇��<(�9��2�_�WV����P��Q������m�8ey%0w�a���]U�Z3p��:�r�n���k9�Ӗב~+<o�q�/���O���y:�5��eSn����$8?&�%��'�.�M$��O�Ec
nr{_�����t j�&�F��HM��Gp��u�y���C���:����L	��A��q8F@4M��p'� ��k3F��x]�C���"m~��W��    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/PowerBlock.png-55e49161a21ada6e804dcc0fca90c65b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/PowerBlock.png"
dest_files=[ "res://.import/PowerBlock.png-55e49161a21ada6e804dcc0fca90c65b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST@   @             PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx���KQǿE��o=Ջ �I�1�:��^�u5JVчn���\����]CD]�B4-�"	bAj���z�7��mwz�u���93{��|��0�����߹����¢�9&rN�=�RT�b����dEg���JΉ��q5��zEϗ��S5�q�deJ  666�fHo8���.  ��M%3z��⴬Q �l��̘� YMģ/� =�~ir� �~�N5`� ��G�͟�5H8Nb$Y���� �?�@t���	�]�^�E�
�cƁ��3�z�;5-�Z �,��4"fp�Ί�d�A,�HM�Z h4��t�aFV+f�n2W�b4���������?�KE�N��������_��of/���x� ��k#�y��S���4h�B]
�S�q] #rO��滀n5S�-`u��?��n�ҥ�%mj5Ũh\[�`o� 8�(^� ���Pׅ��;՚�C��TXx);Ѥ@G�o�E�2�T���Q��L�bfm��H@�o%�q��H;�{V��s(���q�Vb#vN	4��#>\����OQ(Wx��mX_�k���-�@d�6���CQ�v/�	�͗�0�x���=]`���~|�D\	Z�{�OŪf�L��GΗ�'��J�"��Z�߅�?�j�z������i�`�]�;��]�p�f���v�(���园H��g���WDv�#6������z$1��hP3��z#T���.�A���w�O��|ܼ�?�ڞV�I��c��g��]y��\�i}�������`[�%d����q���C���$�%�rc���@2�Rs�(�R��%��2JU�b ���r�����߿?�Nv��	�m�q6?D�I�ؐm80x)�p����$��q� ����L�|�d 8���o_�H��6#F� ��eH����,,,j��;���(��    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/PusherBlock.png-258c8366c28f634c9c2c099b9127ed15.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/PusherBlock.png"
dest_files=[ "res://.import/PusherBlock.png-258c8366c28f634c9c2c099b9127ed15.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDST@   @             PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx���KAǿE/"�0+*SR��()"WNC�@�O��^H�BȂ/�^\�pp��f���bo��o�w�׋m�����ٙ����3�;��g���$$$42�(u�ح��>�������ǔ������Q��|����
�:�0�is2� ���|�ō�i��@ `��~$��͋筁}�(ږ�1�
� E[�5�K �PmG����# 
"���%�~�����b�h?��Z��k�Ӯ뺧�a%a�cTYlo��u�0�@ǫ��cv>�2O��<��E�Yڛg��:չ�:��c��*<�m�u�aP�v��G6N,I�w�y�7���a��#�s��m t�*� |���#�PiP\LMM��� (�̲��!�p"X�%U\:/�����%�u��1U��[f�
'���� ʡȃ2q$��Pܸ���Ig��r�]��P�W��E��Ox+��)�f;e�& ��� �0��u|k��;������� �����7>�l��[s�]T/�ͽ>�4111AuB5���+�#_ض�>݆i��JXD7Cccc ��my��<H�(���f�5&.�e�J���� |�V*	�t��O�����vnpf P��+a-���6��C���b�����������H-�82~�qD�A,7DT
�N�K�E씺%�ұ꜒�d|��o]s�
=�T��iS�T$ŵͫ>-�!|Gh���!��0��$��`�����K�e044Tr@*�F�iktpp�ˈ �!�o\�L���s���s���[?BE!�6��y9l�.AT�B G��\B��z� ŷ�!���g��f� ��3ńv�^�6[�+2˫�q��d��"X��\.���o�w%jw�J#`)
����f���L�^�Q�pti�OK}�wT�G� yK��W.���3�v�� ���o�a
p�>���+�Q�\����l.!!�����ۂ�-�3    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/SteamBlock.png-d52702f8e5c78edcd542db8668eb0cb8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/SteamBlock.png"
dest_files=[ "res://.import/SteamBlock.png-d52702f8e5c78edcd542db8668eb0cb8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST@   @           X  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  IDATx���R�H�ߦ�nV�C>DP�(f�k�+������
��L2 ����D4����'-!��U�^���ɓJ�}�tw�l�>����G�Ǉ����5 ��I�u �0}p��i����4{�i�+��UK�4��  �_��fV-�s߱����J��d���1i&�0c�2�o[!�M��$��1�&/#l���
�1y�bn[" ������a�-�&�\_$a
 Lb�Σɔ=`;����E�y�b� ��/�b<r�?9�����I\ޓÑ�p�M��$�L�g�H$�)1��!��g�H4��H4��b�- �n:OCDw�Z�Ct'N�-=�$	`��%����}�==>�b��p ��i,��phs8��'I1�D`��P<��{�m�L&I�ʶH���M��47l{�D2��D2��b�P�A�{��=_yI��b�2(Ķ�<�L�J����y��7RL��;N�����������K�b���0f'�t�^���L��� ���3�>��i�H��A&s��L� �n�{����#���#d�H��ǀ�)�������,:�m�*�s�&�ޱ|k��,������YRl��9;�͡�jr�"�i�2�j�!���lJL&I|k��r�<�s�<Z�;RL�� X��ټC���n��b�/��1@6�X�|6�ino�=ƀ��)����#�
h4�o4�
RL����nnn�M�ɴЮp�^���Ϧ�d���L�^G�X�~�XD�^'Ŗ4�+g���Q<9��c(���b�i���`�8==E�V�t#�j�)�t
L_�T*�Z�r�Z��T*�bK?��3���Z_�M�ɴ�rز,����lJL��)`Yt]羮�,�{G|m�iB��{���?���;B��g����a�ï!+��0�/��a|!�T]@�f�T�0���a�R)�b���b����
����6E&��mq�T��D���y}P�?���>>L� l�g�� ����NΊ`>��a�?����D{�o��    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tile.png-484556c5e80e89276f13d51f43be63d4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/tile.png"
dest_files=[ "res://.import/tile.png-484556c5e80e89276f13d51f43be63d4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_sky = SubResource( 1 )
adjustment_enabled = true
       [remap]

path="res://Scenes/UI.gdc"
            [remap]

path="res://Scripts/Block.gdc"
        [remap]

path="res://Scripts/Builder.gdc"
      [remap]

path="res://Scripts/DebugDrawer.gdc"
  [remap]

path="res://Scripts/Game.gdc"
         [remap]

path="res://Scripts/Globals.gdc"
      [remap]

path="res://Scripts/PistonBlock.gdc"
  [remap]

path="res://Scripts/PusherBlock.gdc"
  �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         ZachLike   application/run/main_scene          res://Scenes/Game.tscn     application/config/icon          res://Sprites/Icon.png     autoload/Globals$         *res://Scripts/Globals.gd   &   debug/settings/gdscript/max_call_stack            gui/theme/use_hidpi            input/ui_leftP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/ui_rightP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/ui_upP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/ui_downP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/left_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/middle_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/right_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/connect`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   C      unicode           echo          script         input/disconnect`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift            control           meta          command           pressed           scancode   C      unicode           echo          script         input/scroll_up�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/scroll_down�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/rotate_block_CW`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   R      unicode           echo          script         input/rotate_block_CCW`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift            control           meta          command           pressed           scancode   R      unicode           echo          script      
   input/play`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   E      unicode           echo          script         input/shift`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/pipette`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Q      unicode           echo          script      )   rendering/environment/default_clear_color      ���>�2�>  �>  �?)   rendering/environment/default_environment          res://default_env.tres           