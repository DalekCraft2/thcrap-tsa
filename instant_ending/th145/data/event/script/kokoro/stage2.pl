#========================================================================
#	������X�g�[���[
#	�X�e�[�W2�@VS�ɂƂ�
#	�ꏊ�F�l�Ԃ̗��i��j
#	�X�e�[�W�^�C�g��
#	   �u�I�J���g�͐i������v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#�t�F�C�X�摜
,DefineObject,kokoro,-360,0,false
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

,Function,"GameStory_PlayBGM(704);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,kokoro_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#�����\��ݒ�
,ImageDef,kokoro,������_��1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,th145_Show,nitori,-1280,


,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�x���Ȃ����܂����ȁ[\,a11x2,0,0
,ClearBalloon,nitori

#�Љ�J�b�g�\���@�ɂƂ�́u�ɂƂ�_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�{1,0,0
���c�Ƃɂ͎c�Ƒ�������񂾂��[\n��������[\,a15x3,0,0
,ClearBalloon,nitori


,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,kokoro,������_��1,0,0
,th145_Show,kokoro,-1280	,

,SetFocus,kokoro		,
�˂��˂�\n�����͓̉�����\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,������_�f1,0,0
�A�^�V�A�L���C�H\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�{1,0,0
�|�}�[�h���I\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,������_�{1,0,0
�͂��͂��́[�I\n���܂ł����􂯏��ɐ�������\n�����Ǝv���ȁI\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
��炦���I\,a05x2,0,0
,ClearBalloon,kokoro




,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,kokoro,-1280,&
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
,ImageDef,kokoro,������_��1,0,0
,ImageDef,nitori,�ɂƂ�_��1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#������t�F�C�X�\���J�n

,SetFocus,nitori
���Ă�\n�A���ĐQ��[����\,a11x2,0,0

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
,ImageDef,nitori,�ɂƂ�_��1,0,0

,th145_Show,kokoro,-1280	,&,#������t�F�C�X�\���J�n
,th145_Show,nitori,-1280	,#������t�F�C�X�\���J�n

,SetFocus,nitori		,
�|�}�[�h�������Ȃ����ƁH\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
���􂯏������Đ�������\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
�ƌ��������O\n���􂯏����ᖳ������\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
����H\,a05x2,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
���ʂ̂����������\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�����ł���\n����H�@���ʂɏ����c�c\,a11x2,0,0
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
