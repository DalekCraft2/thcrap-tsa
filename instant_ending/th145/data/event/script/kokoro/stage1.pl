#========================================================================
#	������X�g�[���[
#	�X�e�[�W�P�@VS���
#	�ꏊ�F�l�Ԃ̗��i��j
#	�X�e�[�W�^�C�g��
#	   �u�I�J���g�͐�������v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,kokoro,-360,0,false
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
,DefineObject,kokoro_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,kokoro,������_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,
,ImageDef,ichirin,���_��1,0,0

#1P�ォ��o��
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,th145_Show,kokoro,-1280,


,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�ˁ[\n�A�^�V�A�L���C�H\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,ichirin		,
�킠�r�b�N�������[�I\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�����[\n���􂯏�����\,a11x2,0,0
,ClearBalloon,ichirin

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,ichirin		,
,ImageDef,ichirin,���_�]1,0,0
�͂��|�}�[�h�|�}�[�h\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,kokoro		,
,ImageDef,kokoro,������_�]1,0,0
�ӂ��ӂ���\n��͐���������������\n�^�̌��􂯏�\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
����Ȏ��������ʂ�[�I\,a11x2,0,0
,ClearBalloon,kokoro





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,kokoro,-1280,&
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
,ImageDef,kokoro,������_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#������t�F�C�X�\���J�n

,SetFocus,ichirin
���Ȃ񂾈��\,a11x2,0,0

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
,ImageDef,ichirin,���_��1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#������t�F�C�X�\���J�n

,SetFocus,ichirin		,
����Ȕn���ȁc�c\n�`���̎����@�|�}�[�h�@��\n�����Ȃ����Ȃ��\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,kokoro		,
�͂��͂���\n���􂯏��͂�����ł�\n�p���[�A�b�v���邼\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�����\���邪�ǂ�\n����������邪�悢\,a11x2,0,0
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
