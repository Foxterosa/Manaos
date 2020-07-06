#define SEND_SIGNAL(target, sigtype, arguments...) ( !target.comp_lookup || !target.comp_lookup[sigtype] ? NONE : target._SendSignal(sigtype, list(target, ##arguments)) )

// /mob/living/simple_animal/hostile signals
#define COMSIG_HOSTILE_ATTACKINGTARGET "hostile_attackingtarget"
	#define COMPONENT_HOSTILE_NO_ATTACK 1
