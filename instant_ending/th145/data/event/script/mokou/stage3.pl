#========================================================================
#	���g�X�g�[���[
#	�X�e�[�W3�@VS�ɂƂ�
#	�ꏊ�F�����̑�
#	�X�e�[�W�^�C�g��
#	   �u�r�W�l�X�͑����I�ԁv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#�t�F�C�X�摜
,DefineObject,mokou,-360,0,false
,DefineObject,nitori,-360,0,true

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

,Function,"GameStory_PlayBGM(703);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,mokou_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,nitori,-1280,

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�Ȃ񂾁H\n�{�[�����~�����̂��H\,a11x2,0,0
,ClearBalloon,nitori

#�Љ�J�b�g�\���@�ɂƂ�́u�ɂƂ�_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,th145_Show,mokou,-1280,

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
����\n�����Ă���ƕ����Ă�\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
��[���ǂ��ł��傤\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
������Ȃ�o���܂��H\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
��������\n�o���邾���������ĖႨ��\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
����Ȃ���k��\n����͑�w�M�d�i�ł���\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_�{1,0,0
���������Ή͓��͐���\n�����Ƌꂵ���񂾂��\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�������������Ȃ�l��\n�t���Ă���\,a11x2,0,0
,ClearBalloon,mokou


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,mokou,-1280,&
,th145_Hide,nitori,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,nitori,�ɂƂ�_�{1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,nitori
�����A���\�ȋq��\n���T���Ƃ��I\,a11x2,0,0

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
,ImageDef,nitori,�ɂƂ�_��1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,nitori		,
�A�b�`�b�`\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
���q���񍢂�܂����[\n����ȗ��\�������Ⴀ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���̃{�[�����O�ꂩ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
�얲�������Ă����̂�\n�����Ǎ₾�����̂�\n�^�}�^�}�������̂�\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
\R[��|�{�[��]�����ɁH\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�^�}������\,a05x2,0,0
,ClearBalloon,mokou

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
