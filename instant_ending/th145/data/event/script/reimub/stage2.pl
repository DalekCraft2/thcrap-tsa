#========================================================================
#	�얲�^�X�g�[���[
#	�X�e�[�W2�@VS���g
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�Y�ꕨ��̂��߂Ɂv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#�t�F�C�X�摜
,DefineObject,reimu,-360,0,false
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

,Function,"GameStory_PlayBGM(604);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,reimu_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#�����\��ݒ�
,ImageDef,reimu,�얲_��1,0,0
,ImageDef,mokou,���g_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,reimu,-1280	,

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
��[��\n����ł����̌��ǂ�\,a11x2,0,0
,ClearBalloon,reimu

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,mokou,-1280,

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
����@�܂��y��������\n�����n�߂Ă���˂�\,a11x2,0,0
,ClearBalloon,mokou

#�Љ�J�b�g�\���@���g�́u���g_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�O�̐��E�ɍs����Ȃ�\n�����A��čs���Ă���\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�{1,0,0
�n�������Ă�񂶂�Ȃ����\n�������ł����}���ł���\n�ƌ����̂�\,a15x3,0,0

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�������O�̐l�Ԃ�������\n���ē������񂾂���\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���̎��Y�ꕨ��������\n�͂���������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
����ȉ���Ȃ��b\n��ɂ��Ă�\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�{1,0,0
���A���z����\n�ő�̃s���`�Ȃ񂾂���\,a11x2,0,0
,ClearBalloon,reimu





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,reimu,-1280,&
,th145_Hide,mokou,-1280,

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
,ImageDef,mokou,���g_��1,0,0

,th145_Show,reimu,-1280	,&,#�얲�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�얲�t�F�C�X�\���J�n

,SetFocus,mokou
���̒ʘH��ʂ��̂�\n��l������\,a11x2,0,0

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
,ImageDef,reimu,�얲_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,th145_Show,reimu,-1280	,&,#�얲�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�얲�t�F�C�X�\���J�n

,SetFocus,reimu		,
�������ɍs������\n�Y�ꕨ�͗a������\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�����������ē����ĉ���\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�A�肽�����Ă��������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�����Ɛ_�ЂɘA��čs����\n�ǂ����Ǝv���Ă�\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
�́[�e�؂ȓz�˂�\,a11x2,0,0
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
