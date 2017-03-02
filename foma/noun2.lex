!!!akkadian.lexc!!!

Multichar_Symbols +N +Masc +Fem +Sg +Dual +Pl +Nom +Acc +Obl +Undeclined +Construct

LEXICON Root

Noun ;
Pronouns ;

LEXICON Noun

hašah	NMasc;
abbū	NFemT;
amm	NFemAT;


!URUDU = erī	NMasc;
!GÚ = bil	NFemT;
!SIG5 = damq	NMasc;

!ša = relative pronoun;
!ù = conj;
!ki-a-ma = prep;

mana+Undeclined+N:mana	#;

LEXICON Pronouns

anāku+Pron+1p+Com+Sg+Nom:anāku	PRON_ROUTER;
iyāti+Pron+1p+Com+Sg+Obl:iyāti	PRON_ROUTER;

atta+Pron+2p+Masc+Sg+Nom:atta	PRON_ROUTER;
kuāti+Pron+2p+Masc+Sg+Obl:kuāti	PRON_ROUTER;

atti+Pron+2p+Fem+Sg+Nom:atti	PRON_ROUTER;
kuāti+Pron+2p+Fem+Sg+Obl:kuāti	PRON_ROUTER;

šūt+Pron+3p+Masc+Sg+Nom:šūt	PRON_ROUTER;
šuāti+Pron+3p+Masc+Sg+Obl:šuāti	PRON_ROUTER;

šīt+Pron+3p+Fem+Sg+Nom:šīt	PRON_ROUTER;
šiāti+Pron+3p+Fem+Sg+Obl:šiāti	PRON_ROUTER;

!

nēnu+Pron+1p+Com+Pl+Nom:nēnu	PRON_ROUTER;
niāti+Pron+1p+Com+Pl+Obl:niāti	PRON_ROUTER;

attunu+Pron+2p+Masc+Pl+Nom:attunu	PRON_ROUTER;
kunūti+Pron+2p+Masc+Pl+Obl:kunūti	PRON_ROUTER;

attina+Pron+2p+Fem+Pl+Nom:attina	PRON_ROUTER;
kināti+Pron+2p+Fem+Pl+Obl:kināti	PRON_ROUTER;

šunu+Pron+3p+Masc+Pl+Nom:šunu	PRON_ROUTER;
šunūti+Pron+3p+Masc+Pl+Obl:šunūti	PRON_ROUTER;

šina+Pron+3p+Fem+Pl+Nom:šina	PRON_ROUTER;
šināti+Pron+3p+Fem+Pl+Obl:šināti	PRON_ROUTER;

LEXICON PRON_ROUTER

:0	#;
:0	MaENCLITIC;



LEXICON NMasc

+N+Masc+Sg+Construct:0	BASE_ROUTER;
+N+Masc+Pl+Construct:ī	BASE_ROUTER;

+N+Masc+Sg+Nom:^um	BASE_ROUTER;
+N+Masc+Sg+Gen:^im	BASE_ROUTER;
+N+Masc+Sg+Acc:^am	BASE_ROUTER;

+N+Masc+Dual+Nom:^ān	BASE_ROUTER;
+N+Masc+Dual+Obl:^īn	BASE_ROUTER;

+N+Masc+Pl+Nom:^ū	BASE_ROUTER;
+N+Masc+Pl+Obl:^ī	BASE_ROUTER;

! BASE_ROUTER

:0	#;
:0	MPoss;
:0	MaENCLITIC;

!

LEXICON MPoss

+1csPoss:^ī	POSS_ROUTER;
+1csPoss:^īa	POSS_ROUTER;
+1csPoss:^a	POSS_ROUTER;

+2msPoss:^ka	POSS_ROUTER;
+2fsPoss:^ki	POSS_ROUTER;
+3msPoss:^šu	POSS_ROUTER;
+3fsPoss:^ša	POSS_ROUTER;

+1cpPoss:^ni	POSS_ROUTER;
+2mpPoss:^kunu	POSS_ROUTER;
+2fpPoss:^kina	POSS_ROUTER;
+3mpPoss:^šunu	POSS_ROUTER;
+3fpPoss:^šina	POSS_ROUTER;


! POSS_ROUTER

:0	#;
:0	MaENCLITIC;


LEXICON NFemAT

+N+Fem+Sg+Construct:0	BASE_FemAT_ROUTER;
+N+Fem+Pl+Construct:ī	BASE_FemAT_ROUTER;

+N+Fem+Sg+Nom:^at^um	BASE_FemAT_ROUTER;
+N+Fem+Sg+Gen:^at^im	BASE_FemAT_ROUTER;
+N+Fem+Sg+Acc:^at^am	BASE_FemAT_ROUTER;

+N+Fem+Dual+Nom:^at^ān	BASE_FemAT_ROUTER;
+N+Fem+Dual+Obl:^at^īn	BASE_FemAT_ROUTER;

+N+Fem+Pl+Nom:^āt^ūm	BASE_FemAT_ROUTER;
+N+Fem+Pl+Obl:^āt^im	BASE_FemAT_ROUTER;

LEXICON BASE_FemAT_ROUTER

:0	#;
:0	FATPoss;
:0	MaENCLITIC;


LEXICON FATPoss

+1csPoss:^at^ī	POSS_ROUTER;
+2msPoss:^at^ka	POSS_ROUTER;
+2fsPoss:^at^ki	POSS_ROUTER;
+3msPoss:^at^šu	POSS_ROUTER;
+3fsPoss:^at^ša	POSS_ROUTER;

+1cpPoss:^at^ni	POSS_ROUTER;
+2mpPoss:^at^kunu	POSS_ROUTER;
+2fpPoss:^at^kina	POSS_ROUTER;
+3mpPoss:^at^šunu	POSS_ROUTER;
+3fpPoss:^at^šina	POSS_ROUTER;


LEXICON NFemT

+N+Fem+Sg+Construct:t	BASE_FemT_ROUTER;
+N+Fem+Pl+Construct:tī	BASE_FemT_ROUTER;

+N+Fem+Sg+Nom:^t^um	BASE_FemT_ROUTER;
+N+Fem+Sg+Gen:^t^im	BASE_FemT_ROUTER;
+N+Fem+Sg+Acc:^t^am	BASE_FemT_ROUTER;

+N+Fem+Dual+Nom:^t^ān	BASE_FemT_ROUTER;
+N+Fem+Dual+Obl:^t^īn	BASE_FemT_ROUTER;

+N+Fem+Pl+Nom:^āt^ūm	BASE_FemT_ROUTER;
+N+Fem+Pl+Obl:^āt^im	BASE_FemT_ROUTER;


! BASE_FemT_ROUTER

:0	#;
:0	FTPoss;
:0	MaENCLITIC;

!

LEXICON FTPoss

+1csPoss:^t^ī	POSS_ROUTER;
+2msPoss:^tika	POSS_ROUTER;
+2fsPoss:^tiki	POSS_ROUTER;
+3msPoss:^tišu	POSS_ROUTER;
+3fsPoss:^tiša	POSS_ROUTER;

+1cpPoss:^tini	POSS_ROUTER;
+2mpPoss:^tikunu	POSS_ROUTER;
+2fpPoss:^tikina	POSS_ROUTER;
+3mpPoss:^tišunu	POSS_ROUTER;
+3fpPoss:^tišina	POSS_ROUTER;

LEXICON MaENCLITIC

+MA:^ma	#;


