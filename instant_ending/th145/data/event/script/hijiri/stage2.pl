#========================================================================
#	���X�g�[���[
#	�X�e�[�W2�@VS�z�s
#	�ꏊ�F���a���J�_
#	�X�e�[�W�^�C�g��
#	   �u�ȒP�ȃI�J���g�{�[���W�߁v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#�t�F�C�X�摜
,DefineObject,hijiri,-360,0,false
,DefineObject,futo,-360,0,true

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

,Function,"GameStory_PlayBGM(702);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,hijiri_label,50,360,false
,DefineObject,futo_label,1120,360,false

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,futo,�z�s_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280,&
,th145_Show,hijiri,-1280	,

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�ǂ��Ƃ���Ɍ���ꂽ�ȁI\n��ƃ{�[����q���ē����I\,a15x3,0,0
,ClearBalloon,futo

#�Љ�J�b�g�\���@�z�s�́u�z�s_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�]1,0,0
�͂��͂�\n�����܂���\,a05x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�{1,0,0
�{�[�����W�߂Ȃ���\n��������Ȃ��݂����ł���\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�������C�ł���Ȃ�H\n��̃I�J���g������\n�k�����̂̂����悢�I\,a15x3,0,0
,ClearBalloon,futo


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,hijiri,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBGM(501);",# ��bBGM�Đ��J�n
,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,futo,�z�s_�f1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#���t�F�C�X�\���J�n

,SetFocus,futo
�ꖇ����ȁ[��\n�ق�|������H\,a11x2,0,0

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
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#���t�F�C�X�\���J�n

,SetFocus,hijiri		,
���Ⴀ�������\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�]1,0,0
���̃y�[�X�ōs����\n�{�[���W�ߎ��̂͊ȒP�����˂�\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,futo,
��������\n����ς肨�M���ꖇ����Ȃ��̂�\n�����Ȃ��C������\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
���ł���Ȕߑs���Y��\n�I�J���g��I�񂾂̂��˂�\,a15x3,0,0
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
