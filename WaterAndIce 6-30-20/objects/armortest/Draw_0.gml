/// @description Insert description here
// You can write your code in this editor

if (shader_is_compiled(shd_stealth))
   {
   shader_set(shd_stealth);
   draw_self();
   shader_set_uniform_f(time,current_time/1000);
   shader_reset();
   }
else show_debug_message("Shader failed");