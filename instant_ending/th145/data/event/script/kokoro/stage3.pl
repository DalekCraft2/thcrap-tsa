#========================================================================
#	������X�g�[���[
#	�X�e�[�W3�@VS�z�s
#	�ꏊ�F�_��_
#	�X�e�[�W�^�C�g��
#	   �u�􂯂Ă��̂͌����A�ʂ��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#�t�F�C�X�摜
,DefineObject,kokoro,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,kokoro_label,50,360,false
,DefineObject,futo_label,1120,360,false

#�����\��ݒ�
,ImageDef,kokoro,������_��1,0,0
,ImageDef,futo,�z�s_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280,&
,th145_Show,kokoro,-1280	,

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
���݂܂��[��\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
���ʂ̏C�������肢��������\n�v���܂���\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
���q�l�Ȃ獡�͗��炾\,a11x2,0,0
,ClearBalloon,futo

#�Љ�J�b�g�\���@�z�s�́u�z�s_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,
,ImageDef,futo,�z�s_�f1,0,0
�����d�v�Ȏd��������\n�����Ő_�ЂɁc�c\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
���āA����\n���̖����Ƀ{�[���������Ă���H\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_�f1,0,0
���q�l���S�ďW�߂���\n�v�����̂����c�c\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,kokoro		,
,ImageDef,kokoro,������_�f1,0,0
�{�[���H\,a05x2,0,0
,ClearBalloon,kokoro

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
���������đ��q�l�̍���\n�����ω����������̂����m���\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_�]1,0,0
�܂��A����̃{�[����D���Ă���\n�������Ƃ��悤\,a15x3,0,0
,ClearBalloon,futo



,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,kokoro,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kokoro,������_��1,0,0
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#������t�F�C�X�\���J�n

,SetFocus,futo
�܂��{�[�������������̂��c�c\,a15x3,0,0

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
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#������t�F�C�X�\���J�n

,SetFocus,kokoro		,
������\n�A�^�V�A�L���C�H\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,futo		,
�l���{�R�{�R�ɂ��Ă���\n��������ł͖�����\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
���􂯏��̖{����\n�Y��Ă܂���\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,������_�]1,0,0
���Ă�\n���ʂ𒼂��Ė��Ȃ���\,a11x2,0,0
,ClearBalloon,kokoro

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
