// some se ainda não deve aparecer, ou se já deve ter ido embora
if (!quest_get(flag_appear)) { instance_destroy(); exit; }
if (flag_hide != "" && quest_get(flag_hide)) { instance_destroy(); exit; }