#========================================================================
#	�ɂƂ�X�g�[���[
#	�X�e�[�W2�@VS���
#	�ꏊ�F���@��
#	�X�e�[�W�^�C�g��
#	   �u���ɂ͖����Ŏd����܂��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,nitori,-360,0,false
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
,DefineObject,nitori_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280,&
,th145_Show,nitori,-1280	,

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�ǂ��Ƃ���Ɍ���ꂽ��\n�{�[����q���ď������I\,a11x2,0,0
,ClearBalloon,ichirin

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
��؂ȓz��\n�{�[���͑�؂ȏ��i��\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�{1,0,0
�ǂ������O���Ⴈ���\n��������Ȃ��񂾂�H\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
����Ⴛ����I\n�����ȗ��R�Ō����ł��邩��\n�y�����񂶂�Ȃ���\,a15x3,0,0
,ClearBalloon,ichirin


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,nitori,-1280,&
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
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,ichirin,���_�]1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�ɂƂ�t�F�C�X�\���J�n

,SetFocus,ichirin
���łɐK�q�ʂ�\n������Ⴆ\,a11x2,0,0

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
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�ɂƂ�t�F�C�X�\���J�n


,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�]1,0,0
�Ȃ�΃{�[���͒����Ă���\n����͗v��Ȃ����\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
�˂����񂽂�\R[�s�s�`��|�I�J���g]����\n��蕨����Ȃ��H\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�f1,0,0
��������\n�ł����ꂪ�����H\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
����A���ꂶ�Ⴀ�I�J���g�{�[����\n�����Ă��Ȃ��񂶂ᖳ�����Ǝv����\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
���₻�ꂪ�����Ă���񂾂�\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
��蕨�̓s�s�`���ł��I�J���g��\n�e�����󂯂�̂�\n������ƍl�������Ȃ��ƂȂ�\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�]1,0,0
�����͌�������\n���񂽂���݂��\R[�s�s�`��|����΂Ȃ�]�����\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
���������΂����˂�\,c11x2,0,0
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
