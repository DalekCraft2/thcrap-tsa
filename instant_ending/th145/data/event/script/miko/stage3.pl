#========================================================================
#	�_�q�X�g�[���[
#	�X�e�[�W3�@VS�ɂƂ�
#	�ꏊ�F�����̑�
#	�X�e�[�W�^�C�g��
#	   �u���ɂ��s�v�c�Ȗׂ��b�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#�t�F�C�X�摜
,DefineObject,miko,-360,0,false
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

,Function,"GameStory_PlayBGM(702);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,miko_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,nitori,-1280,&
,th145_Show,miko,-1280	,

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�{�[�����悱�������āH\,a11x2,0,0
,ClearBalloon,nitori

#�Љ�J�b�g�\���@�ɂƂ�́u�ɂƂ�_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
������\n�c�O�Ȃ��瓬��Ȃ���\n���Ƃ�͏o���Ȃ��݂�������\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�ǂ����낤�{�[���͂���\n����ŁH\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
����ŁH�@�Ƃ́H\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�f1,0,0
�����Ă�񂾂�\n������o�����A���Đu���Ă񂾂�\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,�_�q_�f1,0,0
���A�����̘b���H\n�܂������A�����l�ō\���\,c15x3,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�͂����x����[\n�ł�����Ȃ��ƃ{�[����\n���Ƃ�o���Ȃ��݂����Ȃ��\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�m���Ă���\n�ł͂�����\,a05x2,0,0
,ClearBalloon,miko




,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,miko,-1280,&
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
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,nitori
���������Ă��܂��Ă�\n�����ɂȂ�Ȃ����[\,a11x2,0,0

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
,ImageDef,miko,�_�q_�f1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,nitori		,
���x����[\n�ł͂���͂������\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,�_�q_�f1,0,0
���̎�K�z��\,a05x2,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�ǂ����b��������\n�{�[���͕��������\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�]1,0,0
����Ȃ���ɂ������o���Ȃ��\n���̋ɂ݂���\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]1,0,0
�q���M�҂ɂ͔���܂�\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�{���ɉ��l���镨��\n���x�����Ȃ̂���\,a11x2,0,0
,ClearBalloon,miko


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
