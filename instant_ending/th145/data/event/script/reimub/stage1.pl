#========================================================================
#	�얲�^�X�g�[���[
#	�X�e�[�W1�@VS�}�~�]�E
#	�ꏊ�F�_�Ёi��j
#	�X�e�[�W�^�C�g��
#	   �u�\��͋����扽���܂ł��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#�t�F�C�X�摜
,DefineObject,reimu,-360,0,false
,DefineObject,mamizou,-360,0,true

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

,Function,"GameStory_PlayBGM(604);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,reimu_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#�����\��ݒ�
,ImageDef,reimu,�얲_�f1,0,0
,ImageDef,mamizou,�}�~�]�E_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mamizou,-1280,&
,th145_Show,reimu,-1280	,


,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�Ȃ񂶂�\,a05x2,0,0
,ClearBalloon,mamizou

#�Љ�J�b�g�\���@�}�~�]�E�́u�}�~�]�E_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mamizou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
��̐l�ԂȂ�\n���������߂��Ă��邼��\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�܂����z�����琳����\n�o�Ă��Ȃ�����̂�\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�{1,0,0
����ȗI���Ȃ��Ƃ�\n�����Ă��Ȃ��́I\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�����O�̐��E��\n�A��čs���Ȃ����I\,a11x2,0,0
,ClearBalloon,reimu



,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,reimu,-1280,&
,th145_Hide,mamizou,-1280,

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,reimu,�얲_��1,0,0
,ImageDef,mamizou,�}�~�]�E_�]1,0,0

,th145_Show,reimu,-1280	,&,#�얲�t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�얲�t�F�C�X�\���J�n

,SetFocus,mamizou
�ǂ������񂶂�H\n�܂��b�������₷���ǂ�\,a15x3,0,0

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
,ImageDef,reimu,�얲_�{1,0,0
,ImageDef,mamizou,�}�~�]�E_�f1,0,0

,th145_Show,reimu,-1280	,&,#�얲�t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�얲�t�F�C�X�\���J�n

,SetFocus,mamizou		,
���O����͍Ō�̖񑩂����\n�ł�łȂ���\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
�݂�ȂŒ��炵�߂Ă�낤\n���ĕ���������낤\n��Ԕ��������Ƃ��낪���O����\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
����Ȃ̂�т肵�Ă��Ȃ���\n�d��Ȏ��ɋC�t�����̂�\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
���̂܂܂ł͂�����\n���̎肪�n�����܂܂Ȃ̂�\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
���̃{�[���ɂ�\n�Ō�̔閧���c���Ă�����\,a15x3,0,0
,ClearBalloon,reimu



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
