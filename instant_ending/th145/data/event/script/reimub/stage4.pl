#========================================================================
#	�얲�^�X�g�[���[
#	�X�e�[�W4�@VS俎q
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u�^�E�镕��y���̌��Ӂv
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,reimu,-360,0,false
,DefineObject,usami,-360,0,true

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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,reimu_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,reimu,�얲_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


#,ImageDef,usami,俎q_��1,0,0
#,th145_Show,usami,-1280,&
#,th145_Show,reimu,-1280	,
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_��1,0,0
#���������\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#�܁A�܂����������ɂ܂�\n�ǂ��Ă���Ȃ�āI\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�˂����������Ă悤\,a11x2,0,0
#,ClearBalloon,usami
#
##�Љ�J�b�g�\���@俎q�́u俎q_�{1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_�G1,0,0
#�������Ԃ͏I����\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_�f1,0,0
#�M���͍��ی삷��Ώۂɓ�����\,a15x3,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�f1,0,0
#����Ȃ��ƌ�����\n�܂��A���Ă���Ȃ��́[�H\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_��1,0,0
#���₾����\n�ی삵�悤�Ɓc�c\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#����܂�������܂���\n�����ǂ��ł�\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#���A\R[�镕��y��|�Ђ݂����΂�����]��Ƃ���\n�Ō�̑�d�������܂�\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�{1,0,0
#���ʂǂ��Ȃ�̂�����Ȃ���\n���z���̒N�����̐l�ɂ�点��\n���肾��������\,a15x3,0,0
#,ClearBalloon,usami
#
#
,Function,"StopBGM(5000);",# BGM��~
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�����I�J���g�{�[���̗͂�\n������邵������\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#������Ď��炪���z���Ƃ�\n���E��j�󂷂錮�ƂȂ�I\,c15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_��1,0,0
#���₿���\n�҂��āA�����㩂�I\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�]1,0,0
#�ǂ��l�߂�ꂽ���q������\n���ɗl�͂��������L����\n�c��ł��傤�I\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�����Ȃ�Ĕ�������\n�Ȃ�ĉ��l�̂��鎀\,a11x2,0,0
#,ClearBalloon,usami
#
,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_�{1,0,0
#����Ȃ��Ɣ������Ȃ��I\n�����ɉ��l�͖����I\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_��1,0,0
#���͊y���̛ޏ�\n����얲�ł���I\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_��1,0,0
#�ǂ������Ă����E�͎��I\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,�얲_��2,0,0
#�����Đl�Ԃ��y�X����\n���Ȃ�����񂩁I\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#,ImageDef,reimu,�얲_��2,0,0
#�l�ԊE�A�Ŋ��̖��\,a11x2,0,0
#
#,SetFocus,reimu		,
#���z���A�ŏ��̖��\,a11x2,0,0
#,ClearBalloon,usami
#,ClearBalloon,reimu
#
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#,ImageDef,reimu,�얲_��2,0,0
#��`�q�̉���ɂ܂ō��ݍ��߁I,b15x3,0,0
#
#,SetFocus,reimu		,
#���������O����܂ō��ݍ��߁I\,b15x3,0,-60
#,ClearBalloon,usami
#,ClearBalloon,reimu





#���҃t�F�C�X�P��
,th145_Hide,reimu,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n
,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,reimu,�얲_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,reimu,-1280	,&,#�얲�t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�얲�t�F�C�X�\���J�n

,SetFocus,usami
�{��\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
