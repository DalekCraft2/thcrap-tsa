#========================================================================
#	�}�~�]�E�X�g�[���[
#	�X�e�[�W3�@VS������
#	�ꏊ�F�l�Ԃ̗��i��j
#	�X�e�[�W�^�C�g��
#	   �u�ʂ肪����̓s�s�`���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/kokoro.csv"

#�t�F�C�X�摜
,DefineObject,mamizou,-360,0,false
,DefineObject,kokoro,-360,0,true

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
,DefineObject,mamizou_label,50,360,false
,DefineObject,kokoro_label,1120,360,false

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,kokoro,������_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,ImageDef,mamizou,�}�~�]�E_�f1,0,0
,th145_Show,mamizou,-1280	,

,SetFocus,mamizou		,
�Ȃ���Ȃ�\,a05x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
���̃{�[���̐��̂�\n�͂߂Ă�������\,a11x2,0,0
,ClearBalloon,mamizou

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���₨�O����́c�c�H\,a11x2,0,0
,ClearBalloon,mamizou


,th145_Show,kokoro,-1280,

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�˂��A�^�V�A�L���C�H\,a11x2,0,0
,ClearBalloon,kokoro


#�Љ�J�b�g�\���@������́u������_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kokoro
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
������\n�M����_��\,a05x2,0,0
,ClearBalloon,mamizou

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�A�^�V�A�L���C����Ȃ��́H\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���A���̑䎌�����������邼\n���􂯏�����ȁH\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
���[���Ɖ������������\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���[�X���ᖳ����\n���b�N�X�ł������āc�c\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
���̐�����킹�邩�I\n�L���C����Ȃ��Ȃ玀�˂��I\,a15x3,0,0
,ClearBalloon,kokoro




,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,mamizou,-1280,&
,th145_Hide,kokoro,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,kokoro,������_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,kokoro,-1280	,#�}�~�]�E�t�F�C�X�\���J�n

,SetFocus,kokoro
���������������낵��\,a11x2,0,0

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
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,kokoro,������_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,kokoro,-1280	,#�}�~�]�E�t�F�C�X�\���J�n

,SetFocus,mamizou		,
�v���o�����|�}�[�h����\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kokoro		,
���Ⴀ\n��������Ă��[\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
����H\n������I�J���g�{�[����\n�����Ă�̂�\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
������Ǝ؂�Ă�����\,a11x2,0,0
,ClearBalloon,mamizou




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
