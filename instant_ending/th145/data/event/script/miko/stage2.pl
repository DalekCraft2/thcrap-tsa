#========================================================================
#	�_�q�X�g�[���[
#	�X�e�[�W2�@VS���
#	�ꏊ�F��D
#	�X�e�[�W�^�C�g��
#	   �u�}���g���l�̖{���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,miko,-360,0,false
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

,Function,"GameStory_PlayBGM(702);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,miko_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,&
,th145_Show,miko,-1280	,

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
���O���{�[���������Ă��邱�Ƃ�\n�m���Ă���\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]1,0,0
�������͌���Ȃ�\n��l�����n�����ǂ�\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�o���ȉ��l�Ԑ}���g�I\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
����Ȃ񂶂ᐷ��オ��Ȃ���\n�{�[�����~�������\n�����Ɠs�s�`�����ۂ��U�����I\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]2,0,0
�ق��m���ɂ�\n���̕����{�[���̍�҂���Ԃ�\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_�{1,0,0
�Ԃ��}���g�Ɛ��}���g\n�ǂ��炩�~�����������ׁI\,b15x3,0,0
,ClearBalloon,miko

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
��[��������\n�����悱���[�I\,b11x2,0,0
,ClearBalloon,ichirin





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,miko,-1280,&
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
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,ichirin
�{���͐��}���g�̕���\n�ǂ��Ȃ�\,a11x2,0,0

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
,ImageDef,miko,�_�q_�]2,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,miko		,
�Ԃ��}���g�Ɛ��}���g\n�������ƌ��܂݂�ɂȂ��Ă���\n���𔲂����̂����c�c\,c15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�܂�����̓{�[�������Ŋ��ق���\n�����Ă��\n���Ԃ����鎞�ɂ���Ă�낤\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,ichirin		,
�Ђ��[\,c05x2,0,0
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
