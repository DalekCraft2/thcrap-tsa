#========================================================================
#	���g�X�g�[���[
#	�X�e�[�W1�@VS�얲
#	�ꏊ�F�|��
#	�X�e�[�W�^�C�g��
#	   �u���g�A���ɗ��s�ɏ��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,mokou,-360,0,false
,DefineObject,reimu,-360,0,true

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

,Function,"GameStory_PlayBGM(704);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,mokou_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mokou,-1280,

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
����A�ǂ������H\n�v���Ԃ肾��\,a11x2,0,0
,ClearBalloon,mokou

,th145_Show,reimu,-1280	,

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�G2,0,0
���C���Ă��H\,a05x2,0,0
,ClearBalloon,reimu

#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�����ɂ��g�͎̂キ�Ă�\n�����Ƃ����_���[�W��\n�����Ă��܂���\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
������\n�ł��悤�₭��������\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�܂������񂽂��{�[����\n�����Ă��Ȃ�Ă�\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
�܂��{�[���̘b��\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�܂�����\n�~������ΒD���Ă݂�\,a11x2,0,0
,ClearBalloon,mokou





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,mokou,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,reimu
�s�V�s���̕Ȃɐg�̎ア�Ƃ�\n�����������\n����񂿂�炨��������\,a15x3,0,0

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
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,mokou		,
�܂��܂�ʃ{�[����\n��ɓ���Ă��܂���\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
��H\n���̃{�[���́c�c\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
����������Ƃ̖���\n�I�[���������Ă����\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
���̃{�[���͊m��\n�����Ǎ�̃{�[����\,a11x2,0,0
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
