#========================================================================
#	���X�g�[���[
#	�X�e�[�W3�@VS�ɂƂ�
#	�ꏊ�F�����̑�
#	�X�e�[�W�^�C�g��
#	   �u�݌ɐ؂�ɂ����ӂ��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#�t�F�C�X�摜
,DefineObject,hijiri,-360,0,false
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
,DefineObject,hijiri_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,ImageDef,nitori,�ɂƂ�_�]1,0,0

,th145_Show,nitori,-1280,&
,th145_Show,hijiri,-1280	,

,SetFocus,nitori		,
�ǂ��Ƃ���ɗ����˂�\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�����̓I�J���g�{�[����\n�d�������\,a11x2,0,0
,ClearBalloon,nitori

#�Љ�J�b�g�\���@�ɂƂ�́u�ɂƂ�_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
����ς�͓��ɂ�\n�s�s�`�����L�܂��Ă���̂˂�\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�f1,0,0
�ӂ��ӂ���\n��X�𕎂�Ȃ���\,c11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�s�m��ȉ\�̏�ɐ��藧��\n�s�s�`���Ȃ��\n����ɂ͂��Ȃ���\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�s�s�`���Ɍ��������@�B�������\n����Ȃ�m��I�ɋ����I\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
���[��\n������Ă����̕���c�c\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�]1,0,0
������x�����I\n�����̓I�J���g�{�[����\n�d��������I\,a15x3,0,0
,ClearBalloon,nitori




# ********************************************
# ********************************************

,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,hijiri,-1280,&
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
,ImageDef,hijiri,��_��1,0,0
,ImageDef,nitori,�ɂƂ�_�]1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#���t�F�C�X�\���J�n

,SetFocus,nitori
��[���A�{�[���Q�b�g�I\n�����͍�������邺�[�I\,a11x2,0,0

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
,ImageDef,hijiri,��_�f1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#���t�F�C�X�\���J�n


,SetFocus,hijiri		,
�I�J���g�{�[����\n�����ĂȂ����Ǝv������\n����ς莝���Ă�̂�\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,nitori		,
����[�H\n��������I�J���g�{�[�����H\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
����ς菊�L������\n�N������o���Ă��Ȃ�\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
���̃{�[��\n��ɂ����u�Ԕ�������\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�f1,0,0
����͈����̎n�܂肾����\,a11x2,0,0
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
