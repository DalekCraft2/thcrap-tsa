#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W4�@VS�ؐ�
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�I�J���g�{�[���̐^���v
#
# �ŏ��́A��̐_�Ђŉ�b�̓r���Ŕw�i���ω����܂�
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,kasen,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2P�L�����X�e�[�W������o��
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
�g����������Ȃ��܂�\n��ɂȂ��Ă��܂�����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�\�z���O�ꂽ��\n\R[�\�ʂ�|�E�E�E]�Ȃ�W�߂�Ή������N����\n�Ǝv�����̂���\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
����ς�����Ƃ�����\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�I�J���g�_��\n�Ȃ񂩊肢�������Ă�����I\,b15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�c�c\,a05x2,0,0
,ClearBalloon,marisa

#1P�ォ��o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�{2,0,0
,th145_Show,kasen,-1280	,#�ؐ�t�F�C�X�\���J�n
����Ȗ镪�ɉ������Ă���\,a11x2,0,0
,ClearBalloon,kasen

#�Љ�J�b�g�\���@�ؐ�́u�ؐ�_�{2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
���A����A����͂���\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�{�[�����W�߂Ă�\n�����N���Ȃ����\n�����������K�v�Ȃ̂��Ȃ�\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
���āA����������\n�I�J���g�{�[����S�ďW�߂��ȁH\,a15x3,0,0
,ClearBalloon,kasen


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
���A����\n�ł��g����������Ȃ���\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�n����\,c05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�얲������Ă���\n����̍�����H\,c11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�M���̓I�J���g�{�[����\n��������͂ł������Ă���́H\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�]1,0,0
�@��������ł�\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�{1,0,0
�c�c\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�\��͋��������n�߂邩\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
���[�H\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�w���ҁ~�~�~�~�̖��ɂ����Ė���\n�@�P�R�O�N�̋ւ������x\,b15x3,0,0
,ClearBalloon,kasen

,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,

# -----------------------------------------------------------
# �����Ŕw�i���ٕς̐_�Ђɕω����܂�
# -----------------------------------------------------------

#1P�ォ��o��
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
,Function,GameStory_SparkFadeIn(),
,Function,GameStory_FieldVibration_Low(),
,Function,GameStory_FieldSpark(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
,Function,GameStory_FieldVibration_High(),
,Function,GameStory_FadeOut(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"
,Function,GameStory_SwitchBack(),
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,ImageDef,marisa,������_��2,0,0
,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�������t�F�C�X�\���J�n


,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n




,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�����A�J�E���g�_�E���͎n�܂���\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�{1,0,0
��������Ηǂ��̂�����Ȃ��ق�\n�����ł�����܂�\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
����񔻂��\n��̉����N���Ă�񂾁H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
��������C�������̂Ȃ�\n�M�������ė]�T��\R[����|�E�E]�݂̂�\,a15x3,0,0
,ClearBalloon,kasen



#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_�f1,0,0
,ImageDef,kasen,�ؐ�_�{1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,kasen,-1280,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,#�������L�������w��
�{�C�Ȃ񂾂ȁH\n��������������񂯂�\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,
����͎�����\n�������M�����ア�Ƃ������ʂ�����\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�]1,0,0
������\n���Ⴀ�|�����͉�������\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�����s��������\n����������\,c11x2,0,0
,ClearBalloon,marisa


#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::�΍ĊJ����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,kasen
����Ȃ��񂾂����̂�\n���Ⴀ�����s�������Ȃ���\,a11x2,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_�G1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0
#,ImageDef,kasen,�ؐ�_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,kasen		,#�������L�������w��
�����\��\n�M���ő��v�ł��傤\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�����A���������\n�����N�����Ă���񂾁H\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�@1,0,0
�M����㩂ɂ͂܂��Ă��܂���\n�����������������΂����\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
�I�J���g�{�[���̎����H\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�@1,0,0
���ׂ����ʁA�I�J���g�{�[����\n���E�������ׂ̌��̗l�ȕ���\n�Ȋw�I�Ől�H�I�ȕ���������\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�{1,0,0
�O�̐��E�̕����ŏo���Ă���\n�O�̃G�l���M�[������\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�ӁA�ӂ�\n����ŏW�߂�Ɖ����H\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�S�ďW�߂��҂͌��E��\n��������j�󂷂�V���Ȍ��ƂȂ�\n���E��j�󂵂Ȃ���O�Ɍ�����\,c15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
�{�[�����W�߂�Ƃ����\��\n�N�����������֒f�̉\������\,c15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
�ق��ق��A����\n�������ā[�H\,b11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�@1,0,0
�M���͂���㩂�\n�͂܂����̂�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
�{�[���͖��m�̗͂���\n���̗͂����ł͂ǂ��ɂ��Ȃ�Ȃ�\,c15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�c�c���Ď��́A���͂�������\n���z�����炨����΂��H\,b15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
����ł��������王�E���c��Łc�c\,c15x3,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�]1,0,0
����\n�S�z�����\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�@1,0,0
����������ł���\n�M���̋������������̂������\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
�Ƃ����ƁH\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�{1,0,0
���S��㩂ɂ͂܂���\n���E���󂳂��O��\n�M�����O�̐��E�ɑ��荞�ށI\,b15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�G�͎����Ō����ē|���Ȃ����I\n���s�����玀����݂̂ƐS����I\,b15x3,0,0
,ClearBalloon,kasen


,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
