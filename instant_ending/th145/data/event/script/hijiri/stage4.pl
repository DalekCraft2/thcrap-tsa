#========================================================================
#	���X�g�[���[
#	�X�e�[�W4�@VS���g
#	�ꏊ�F�|��
#	�X�e�[�W�^�C�g��
#	   �u���Ԓm�炸�̕s���ҁv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#�t�F�C�X�摜
,DefineObject,hijiri,-360,0,false
,DefineObject,mokou,-360,0,true

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

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,hijiri_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,mokou,���g_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mokou,-1280,


,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�����ɂ���̂͒N��\,a11x2,0,0
,ClearBalloon,mokou

#�Љ�J�b�g�\���@���g�́u���g_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# 2P�L�����X�e�[�W������o��
,Function,GameStory_1P_In(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���O�͊m�����@���́c�c\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�����ɉ��̂悤���H\,a11x2,0,0
,ClearBalloon,mokou



,th145_Show,hijiri,-1280	,

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
�M������{�[���Ɠ���\n�����I�[�����o�Ă����̂�\n���ɗ��܂���\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
��͂肨�O����\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
���O������\,a05x2,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�����̏����܂���\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�{�[�����悱�����ēz��\n���l������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�{1,0,0
���������{�[�����ĉ����H\n����Ȃ��񎝂��ĂȂ�����\n�����Ă����ʂ�\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
�����ĂȂ��ł����āH\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
�ł����̃I�J���g�I�[���́c�c\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,���g_�{1,0,0
�����I�J���g�I�[������\n��̂킩��Ȃ����΂��茾����\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
���[��\n���������M��\n�l�Ԃ̉\�Ƃ���������܂��H\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
�������̋����Ȃ�\n�Ƃ����Ɍ͂ꂽ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
�s�s�`���Ƃ��́H\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�Ȃ񂾁H\n�s�s�`������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
�́[\n�ǂ������܂Ő��Ԓm�炸�̂܂܂�\n�����܂���\,a15x3,0,0
,ClearBalloon,hijiri


,Function,"StopBGM(2000);",# BGM��~

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
�ł��m���ɋM������I�J���g\n�{�[���̑��݂�������̂ł���\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
���ӎ��̓��ɐg�ɕt����\n�Ȃ�Ď�������悤��\,a11x2,0,0
,ClearBalloon,hijiri

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�܂�������\n�ǂ������̃{�[����q����\n�����񂾂�H\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�{1,0,0
�����ɗ����z�݂͂�Ȃ���������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�ǂ������ɂ͂��Ȃ�����\n�v�������肩�����Ă��ȁI\,a15x3,0,0
,ClearBalloon,mokou



#���҃t�F�C�X�P��
,th145_Hide,hijiri,-1280,&
,th145_Hide,mokou,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,mokou,���g_�]1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#���t�F�C�X�\���J�n

,SetFocus,mokou
�܂����ɂ��тꂽ��\,a11x2,0,0

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
,ImageDef,hijiri,��_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#���t�F�C�X�\���J�n

,SetFocus,hijiri		,
�����Ƒ�ʂɃ{�[����\n���ߍ���ł��̂�\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
�������A�D���ɗ���z��\n�Ԃ蓢�����Ă�����c�c\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
�Ӂ[\n���������y���Ȃ����C�������\n���������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
���ӎ��ł��������Ă��܂�\n�Ƃ����̂́c�c\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�{1,0,0
���悢�掝����\n�����̗\���������Ȃ�\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
�悭����ȃ{�[���̒D������\n�Ȃ�Ċy���߂����˂�\,a15x3,0,0
,ClearBalloon,hijiri


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
