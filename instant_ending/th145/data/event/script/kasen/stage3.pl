#========================================================================
#	�ؐ�X�g�[���[
#	�X�e�[�W3�@VS������
#	�ꏊ�F�l�Ԃ̗��i��j
#	�X�e�[�W�^�C�g��
#	   �u�|�}�[�h��������Ȃ��I�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/kokoro.csv"

#�t�F�C�X�摜
,DefineObject,kasen,-360,0,false
,DefineObject,kokoro,-360,0,true

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

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,kasen_label,50,360,false
,DefineObject,kokoro_label,1120,360,false

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_�{1,0,0
,ImageDef,kokoro,������_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,kasen,-1280	,#������t�F�C�X�\���J�n

,SetFocus,kasen		,#�������L�������w��
�ǂ����݂�Ȗ����o�̂�����\n�{�[������ɂ��Ă���l��\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
�{�[�����������Ă���҂̏�����\n�l�������K�v�����邩\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
������ŏ����W���邩\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�]1,0,0
�܂������{�[����\n��������Ă��鎞�_��\n���W�܂�S�z�͖����̂�����\,a15x3,0,0
,ClearBalloon,kasen


#1P�ォ��o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,kokoro		,#�������L�������w��
,ImageDef,kokoro,������_��1,0,0
,th145_Show,kokoro,-1280	,#������t�F�C�X�\���J�n
�˂��˂�\n�A�^�V�A�L���C�H\,a11x2,0,0
,ClearBalloon,kokoro

#�Љ�J�b�g�\���@������́u������_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kokoro
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
���񂽂�\n��������̔\�y�t�́c�c\,c11x2,0,0
,ClearBalloon,kasen

,SetFocus,kokoro		,#�������L�������w��
,ImageDef,kokoro,������_�{1,0,0
�A�^�V�A�L���C�H\n���Đu���Ă�̂�\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
���[��\n�����͖����񂶂ᖳ���H\,c11x2,0,0
,ClearBalloon,kasen

,SetFocus,kokoro		,#�������L�������w��
,ImageDef,kokoro,������_��1,0,0
�ӂ��ӂ���\n����ł��L���C�Ȃ̂��[�I\,a11x2,0,0
,ClearBalloon,kokoro









,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,kasen,-1280,&
,th145_Hide,kokoro,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,kokoro,������_��1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,kokoro,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,kokoro
���[�{����ꂽ\,a11x2,0,0

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
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,kokoro,������_��1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,kokoro,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,kasen
����ȏ��ɂ�\n�{�[��������Ȃ��\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kokoro
�A�^�V�A�L���C����Ȃ��c�c\,a11x2,0,0
,ClearBalloon,kokoro


,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
����Ȏ��͌����􂯂Ă�\n����Ȃ������ǂ����\,a11x2,0,0
,ClearBalloon,kasen





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
