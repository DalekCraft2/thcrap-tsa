#========================================================================
#	���g�X�g�[���[
#	�X�e�[�W5�@VS俎q
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u�T�C�L�b�N�o�g���v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,mokou,-360,0,false
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

,Function,"GameStory_PlayBGM(707);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,mokou_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

#,th145_Show,mokou,-1280,
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_��1,0,0
#�قց[\,a05x2,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_�f1,0,0
#���̒m���Ă������E�ƈႤ�c�c\n���ꂪ�O�̐��E���ƁH\,a15x3,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_��1,0,0
#�d����������\n���ꂩ���N�߂���\n�o���Ă����Ȃ�\,a15x3,0,0
#,ClearBalloon,mokou
#
## 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,ImageDef,usami,俎q_��1,0,0
#,th145_Show,usami,-1280	,
#
#,SetFocus,usami		,
#�܂��ނꂽ�ނꂽ\n��ʂ��[\,a11x2,0,0
#,ClearBalloon,usami
#
##�Љ�J�b�g�\���@俎q�́u俎q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_��1,0,0
#���܂���\n�O�̐l�ԂɌ���ꂽ\,a11x2,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_�{1,0,0
#�������H\,a05x2,0,0
#,ClearBalloon,mokou
#
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�����|\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�啪�D��I�ȓz��\n�ނꂿ�����\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�]1,0,0
#�{���ɂ����������ɂȂ�Ȃ��b\n�Ȃ񂿂�\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_�{1,0,0
#�O�̐��E�Ŗ\���Ȃ�\n����ꂽ�����\,a11x2,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_��1,0,0
#���������ʂ�ܓ���\n�Z�����Ă����ȓz�����Ă���\n�C���C�����Ă����\,a15x3,0,0
#,ClearBalloon,mokou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�ʂ�ܓ����Ȃ�Ď����\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�������܂��錻��Љ��\n���l�܂�w�Z����\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�{1,0,0
#�������o�����ĂȂ�\n�z�ɉ�������\,a11x2,0,0
#,ClearBalloon,usami
#
#,Function,"StopBGM(2000);",# BGM��~
#
#,SetFocus,mokou		,
#,ImageDef,mokou,���g_��1,0,0
#�����͏\������������\n������ƗV��ł���Ă�\n�ǂ��񂶂�Ȃ����H\,a15x3,0,0
#,ClearBalloon,mokou
#
#,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�f1,0,0
#����ς茶�z���̓z��\n�݂�ȍD��I��\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�]1,0,0
#�����Ă݂�Ȃ���\n����𕎂�\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�l�ނ̉b�q��\n�c�݂����񂾈�����\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�ǂ��炪�D��Ă���̂�\n�����Ȃ��ƋC���ς܂Ȃ���I\,a15x3,0,0
#,ClearBalloon,usami
#
#
#
#


#���҃t�F�C�X�P��
,th145_Hide,mokou,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,usami
�s�V�s���ł����āH\n���������ĎO�c�ڂ̐l�Ƃ�\n�o�Ă��Ȃ��H\,a15x3,0,0

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
,ImageDef,mokou,���g_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#���g�t�F�C�X�\���J�n

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
