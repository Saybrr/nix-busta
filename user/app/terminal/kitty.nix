{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    kitty
  ];
  programs.kitty.enable = true;
  programs.kitty.settings = {
    # Transparency (matches previous alacritty setup)
    background_opacity = lib.mkForce "0.85";
    
    # Font rendering improvements
    modify_font = "cell_width 90%";
    
    # Performance and rendering
    repaint_delay = 10;
    input_delay = 3;
    sync_to_monitor = true;
    
    # Scrollback
    scrollback_lines = 10000;
    
    # Mouse
    copy_on_select = false;
    click_interval = -1.0;
    

    # Advanced
    shell_integration = "enabled";
    allow_remote_control = true;
    
    # URL handling
    url_style = "curly";
    open_url_with = "default";
    
    # Bell
    enable_audio_bell = false;
    visual_bell_duration = 0.0;
  };
}
