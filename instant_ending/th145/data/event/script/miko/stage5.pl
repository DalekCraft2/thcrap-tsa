#========================================================================
#	�_�q�X�g�[���[
#	�X�e�[�W5�@VS��
#	�ꏊ�F���@��
#	�X�e�[�W�^�C�g��
#	   �u�D���������X�̏I���v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/hijiri.csv"

#�t�F�C�X�摜
,DefineObject,miko,-360,0,false
,DefineObject,hijiri,-360,0,true

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
,DefineObject,miko_label,50,360,false
,DefineObject,hijiri_label,1120,360,false

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,hijiri,��_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"
#
#
#,th145_Show,hijiri,-1280	,&
#,th145_Show,miko,-1280	,
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�����A�c��͂��O������\n��l�����{�[����n�����ǂ�\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,#�������L�������w��
#,ImageDef,hijiri,��_��1,0,0
#����ȂɃ{�[�����W�߂�\n�������悤�ƌ����́H\,a15x3,0,0
#,ClearBalloon,hijiri
#
##�Љ�J�b�g�\���@���́u��_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,hijiri
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�]1,0,0
#�{�[���̐��̂��͂߂����Ȃ�\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�ǂ���炱�̃{�[���͏W�܂��\n���̋�Ԃ�˂��j�鐫����\n�����Ă���̂�\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,#�������L�������w��
#,ImageDef,hijiri,��_��1,0,0
#�Ȃ�ł����āH\n��ԓ]�ڂ�㩂��Ď��H\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�]2,0,0
#�܂��A����ɂ͑�������\n�C���t���Ă����̂���\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#���͎c��̃{�[����\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�{1,0,0
#���ȏ�W�܂����Ƃ�\n�c��̃{�[��������\n���̒n�͍ĂуI�J���g�ɖ�����\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�܂肾\n�S�Ẵ{�[�����W�߂Ȃ���\n���̑����͏I���Ȃ��̂�\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,#�������L�������w��
#,ImageDef,hijiri,��_�]1,0,0
#��������ȋC�����Ă܂���\n�ł����W�߂������ł�\n���ɂ��������Ȃ��̂ł́H\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,#�������L�������w��
#,ImageDef,hijiri,��_�f1,0,0
#��葛�����傫���Ȃ邾������\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,Function,"StopBGM(4000);",# BGM��~
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�f1,0,0
#���������l���Ō�܂�\n�T�d�������̂���\n�ŋߋC���t�����̂���\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#���̃{�[���̋�ԓ]�ڂ̗͂�\n���z���ɂ����y�΂Ȃ���\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#���̓���ł͌��ʂ��o�Ȃ�\n�܂�͎������L���Ă������\n���ו��肾\,a15x3,0,0
#,ClearBalloon,miko
#
#
#,SetFocus,hijiri		,#�������L�������w��
#,ImageDef,hijiri,��_��1,0,0
#����͖ʔ���������\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,#�������L�������w��
#,ImageDef,hijiri,��_�{1,0,0
#�ł�����ȋ���Ŗ��m�̗͂�\n�M����l�ɑ����Ƃ����̂�\n������Əo���Ȃ����k�ł�\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#���������Ǝv������\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�{�[���̂��Ƃ�ɂ�\n�ǂ݂̂�����Ȃ��Ƃ����Ȃ���\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�����Ȃ��O�����̋C�ɂ�����\n��Ԃ��Ȃ�����I\,b15x3,0,0
#,ClearBalloon,miko
#
#
#





#���҃t�F�C�X�P��
,th145_Hide,miko,-1280,&
,th145_Hide,hijiri,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,hijiri,��_�]1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,hijiri,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,hijiri
�������󂵂Č����܂��傤\n�I�J���g�̓I�J���g�ɏ����̂�\n��Ԃł�\,a15x3,0,0

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
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,hijiri,��_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,hijiri,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,hijiri
�{��\,a11x2,0,0
,ClearBalloon,hijiri

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
