#========================================================================
#	���X�g�[���[
#	�X�e�[�W�P�@VS���
#	�ꏊ�F��D
#	�X�e�[�W�^�C�g��
#	   �u�o�w�I�ŋ��ő��̘V�k�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,hijiri,-360,0,false
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

,Function,"GameStory_PlayBGM(704);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,hijiri_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,&
,th145_Show,hijiri,-1280	,

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
��ւ�\,a05x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_�]1,0,0
�����ʔ����͂�\n��ɓ��ꂽ���\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�Ƃ����ƁA����������\n���l���s�s�`�����g���C��\n�Ȃ����̂ł���\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
�ӂ��ӂ���\n�ŋ��ő��̓s�s�`����\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,��_��1,0,0
�����V�тɎQ�����Ă�\n�ǂ����ˁH\,a11x2,0,0
,ClearBalloon,hijiri





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,hijiri,-1280,&
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
,ImageDef,hijiri,��_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#���t�F�C�X�\���J�n

,SetFocus,ichirin
�܂������Ɋ���ĂȂ�\n�݂����ł���\,a11x2,0,0

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
,ImageDef,ichirin,���_��1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#���t�F�C�X�\���J�n


,SetFocus,hijiri		,
�Ȃ��\n���ꂪ�\�̃I�J���g�{�[���c�c\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,ichirin,
�ǂ��ł��傤�H\n���W�߂�Ɗo�肪�J����\n�����ł���\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,hijiri		,
�Ӂ[��\n����͖��ȑ㕨�˂�\,a11x2,0,0
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
