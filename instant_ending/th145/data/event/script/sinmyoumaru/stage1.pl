#========================================================================
#	�j���ۃX�g�[���[
#	�X�e�[�W�P�@VS���
#	�ꏊ�F��D
#	�X�e�[�W�^�C�g��
#	   �u�S�͂Ő����Ă����܂��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,sinmyoumaru,-360,0,false
,DefineObject,ichirin,-360,0,true

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
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280,&
,th145_Show,sinmyoumaru,-1280	,

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
��[�������̋��l�[�I\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
����A���l�H\n�����_�R�̎����\,a11x2,0,0
,ClearBalloon,ichirin

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
���������ăI�J���g�{�[����\n�D���ɗ������[�I\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�{�[����q���Ă̐퓬�Ȃ�\n�����Ȃ���I\,a15x3,0,0

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�����o�債��[�I\n�����߁[�I\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
����A���������āH\,a11x2,0,0
,ClearBalloon,ichirin





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,sinmyoumaru,-1280,&
,th145_Hide,ichirin,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,ichirin
�������āA���ڂ��܂̎����\n�h�L�h�L�h�L\,a15x3,0,0

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
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,sinmyoumaru		,
�{�[������ɓ��ꂽ���[�I\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
���[\n���O���\��R�����Ă��ȁ[\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
���\�����i��ł��̂Ɂ[\,a11x2,0,0
,ClearBalloon,ichirin

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
