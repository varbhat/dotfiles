# https://github.com/jeffreytse/zsh-vi-mode/issues/19
if command -v wl-copy >/dev/null && command -v wl-paste >/dev/null; then
    sysclip_vi_yank() {
      zvm_vi_yank
      echo -en "${CUTBUFFER}" | wl-copy
    }

    sysclip_vi_delete() {
      zvm_vi_delete
      echo -en "${CUTBUFFER}" | wl-copy
    }

    sysclip_vi_change() {
      zvm_vi_change
      echo -en "${CUTBUFFER}" | wl-copy
    }

    sysclip_vi_change_eol() {
      zvm_vi_change_eol
      echo -en "${CUTBUFFER}" | wl-copy
    }

    sysclip_vi_put_after() {
      CUTBUFFER=$(wl-paste)
      zvm_vi_put_after
      zvm_highlight clear # zvm_vi_put_after introduces weird highlighting for me
    }

    sysclip_vi_put_before() {
      CUTBUFFER=$(wl-paste)
      zvm_vi_put_before
      zvm_highlight clear # zvm_vi_put_before introduces weird highlighting for me
    }

    zvm_after_lazy_keybindings() {
      zvm_define_widget sysclip_vi_yank
      zvm_define_widget sysclip_vi_delete
      zvm_define_widget sysclip_vi_change
      zvm_define_widget sysclip_vi_change_eol
      zvm_define_widget sysclip_vi_put_after
      zvm_define_widget sysclip_vi_put_before

      zvm_bindkey visual 'y' sysclip_vi_yank
      zvm_bindkey visual 'd' sysclip_vi_delete
      zvm_bindkey visual 'x' sysclip_vi_delete
      zvm_bindkey vicmd  'C' sysclip_vi_change_eol
      zvm_bindkey visual 'c' sysclip_vi_change
      zvm_bindkey vicmd  'p' sysclip_vi_put_after
      zvm_bindkey vicmd  'P' sysclip_vi_put_before
    }
fi
