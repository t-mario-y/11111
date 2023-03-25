kbd = Keyboard.new

kbd.split = true
kbd.uart_pin = 0

kbd.init_pins(
  [11, 12, 13, 14, 15],        # rows
  [22, 21, 20, 19, 18, 17, 16] # columns
)

# Row01-----Row02-----Row03-----Row04-----Row05-----Row06-----Row07-----Row08------Row09-----Row10-----Row11-----Row12-----Row13-----Row14
kbd.add_layer :default, %i(
  KC_ESC    KC_1      KC_2      KC_3      KC_4      KC_5      KC_MINS   C_EQL      KC_6      KC_7      KC_8      KC_9      KC_0      KC_GRV
  KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T      KC_LBRC   C_RBRC     KC_Y      KC_U      KC_I      KC_O      KC_P      KC_BSPC
  KC_LCTRL  KC_A      KC_S      KC_D      KC_F      KC_G      KC_BSLS   C_SLSH     KC_H      KC_J      KC_K      KC_L      KC_SCLN   KC_QUOT
  KC_LSFT   KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LANG1  C_LANG2    KC_N      KC_M      KC_COMM   KC_DOT    KC_HOME   KC_RSFT
  KC_NO     KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_SPC    C_ENT      RAISE     KC_RALT   KC_END    KC_NO     KC_NO     KC_NO
)
# Row01------Row02-----Row03-----Row04-----Row05-----Row06-----Row07-----Row08------Row09-----Row10-----Row11-----Row12-----Row13-----Row14
kbd.add_layer :lower, %i(
  KC_ESC     KC_F1     KC_F2     KC_F3     KC_F4     KC_F5     KC_F11    KC_F12     KC_F6     KC_F7     KC_F8     KC_F9     KC_F10    KC_GRV
  KC_TAB     KC_Q      KC_W      KC_E      KC_R      KC_T      KC_LBRC   KC_RBRC    KC_Y      KC_U      KC_I      KC_O      KC_P      KC_BSPC
  KC_LCTRL   KC_A      KC_S      KC_D      KC_F      KC_G      KC_BSLS   KC_SLSH    KC_LEFT   KC_DOWN   KC_UP     KC_RIGHT  KC_SCLN   KC_QUOT
  KC_LSFT    KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LANG1  KC_LANG2   KC_N      KC_M      KC_COMM   KC_DOT    KC_HOME   KC_RSFT
  KC_NO      KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_SPC    KC_ENT     RAISE     KC_RALT   KC_END    KC_NO     KC_NO     KC_NO
)
# Row01------Row02-----Row03-----Row04-----Row05-----Row06-----Row07-----Row08------Row09-----Row10-----Row11-----Row12-----Row13-----Row14
kbd.add_layer :raise, %i(
  KC_ESC     KC_1      KC_2      KC_3      KC_4      KC_5      KC_MINS   KC_EQL     KC_6      KC_7      KC_8      KC_9      KC_0      KC_GRV
  KC_TAB     KC_Q      KC_W      KC_E      KC_R      KC_T      KC_LBRC   KC_RBRC    KC_Y      KC_U      KC_I      KC_O      KC_P      KC_DEL
  KC_LCTRL   KC_A      KC_S      KC_D      KC_F      KC_G      KC_BSLS   KC_SLSH    KC_LEFT   KC_DOWN   KC_UP     KC_RIGHT  KC_SCLN   KC_QUOT
  KC_LSFT    KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LANG1  KC_LANG2   KC_N      KC_M      KC_COMM   KC_DOT    KC_HOME   KC_RSFT
  KC_NO      KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_SPC    KC_ENT     RAISE     KC_RALT   KC_END    KC_NO     KC_NO     KC_NO
)

kbd.define_mode_key :LOWER, [nil, :lower, nil, nil]
kbd.define_mode_key :RAISE, [nil, :raise, nil, nil]

kbd.start!
