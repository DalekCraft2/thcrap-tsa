#========================================================================
#	������X�g�[���[
#	�X�e�[�W4�@VS�_�q
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u���������Ă��ז�������H�v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#�t�F�C�X�摜
,DefineObject,kokoro,-360,0,false
,DefineObject,miko,-360,0,true

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
,DefineObject,kokoro_label,50,360,false
,DefineObject,miko_label,1120,360,false

#�����\��ݒ�
,ImageDef,kokoro,������_��1,0,0
,ImageDef,miko,�_�q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


# 2P�L�����X�e�[�W������o��
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#,ImageDef,miko,�_�q_��1,0,0
#,th145_Show,miko,-1280,
#
#,SetFocus,miko		,
#�N���H\,a05x2,0,0
#,ClearBalloon,miko
#
#,th145_Show,kokoro,-1280	,
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�ʗ�C���c�c\n�����A���͎ז������\,a11x2,0,0
#,ClearBalloon,miko
#
##�Љ�J�b�g�\���@�_�q�́u�_�q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,miko
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,kokoro		,
#,ImageDef,kokoro,������_�f1,0,0
#�������Ă���́H\,a11x2,0,0
#,ClearBalloon,kokoro
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�]1,0,0
#���O�ɂ͗^��m��ʎ���\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,kokoro		,
#,ImageDef,kokoro,������_��1,0,0
#�ɂȂ�\n���ʒ����Ă����[�H\,a11x2,0,0
#,ClearBalloon,kokoro
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�f1,0,0
#�ɂ���Ȃ��ƌ����Ă���\,a11x2,0,0
#,ClearBalloon,miko
#
#,Function,"StopBGM(500);",# BGM��~
#,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�{1,0,0
#���̃{�[���𒆐S�Ƃ���������\n���܂��ɐ��O��Ȃ̂��c�c\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#���Ă��O�A���ł܂�\n�I�J���g�{�[���������Ă���H\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�f1,0,0
#��Ȃ��Ƃ��낾����\n�S�ďW�߂����肾������\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�܂�����ȏ��ɂ��������̂�\,a15x3,0,0
#,ClearBalloon,miko
#
#
#
#
##���҃t�F�C�X�P��
#,th145_Hide,kokoro,-1280,&
#,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kokoro,������_��1,0,0
,ImageDef,miko,�_�q_�f1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,miko,-1280	,#������t�F�C�X�\���J�n

,SetFocus,miko
���������c�c\n�I�J���g�{�[������������\n�ǂ����������H\,a15x3,0,0

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
,ImageDef,kokoro,������_��1,0,0
,ImageDef,miko,�_�q_��1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,miko,-1280	,#������t�F�C�X�\���J�n

,SetFocus,miko
�{��\,a11x2,0,0
,ClearBalloon,miko

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
