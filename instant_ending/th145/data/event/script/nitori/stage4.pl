#========================================================================
#	�ɂƂ�X�g�[���[
#	�X�e�[�W4�@VS�}�~�]�E
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u���Č��ʐU�����؂ł��v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#�t�F�C�X�摜
,DefineObject,nitori,-360,0,false
,DefineObject,mamizou,-360,0,true

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

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,nitori_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#�����\��ݒ�
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,mamizou,�}�~�]�E_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

#,th145_Show,mamizou,-1280,
#
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#���[��\n��͑҂��������\,a11x2,0,0
#,ClearBalloon,mamizou
#
##�Љ�J�b�g�\���@�}�~�]�E�́u�}�~�]�E_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,mamizou
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�f1,0,0
#��H\n�N����\,a05x2,0,0
#,ClearBalloon,mamizou
#
## 2P�L�����X�e�[�W������o��
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,th145_Show,nitori,-1280	,
#
#,SetFocus,nitori		,
#,ImageDef,nitori,�ɂƂ�_��1,0,0
#��������H\n�����Ă�̂�\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�{1,0,0
#�͓����c�c�܂�����\n\R[�V��|�X�s�[�J�[]���ᖳ�������}�V�����\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�f1,0,0
#���O����ɂ͊֌W�̖����b����\n��l�����A�邪�ǂ�\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�A���ĐQ�ĖY���\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,nitori		,
#,ImageDef,nitori,�ɂƂ�_��1,0,0
#���A����\n�ʓ|�Ȃ��Ƃɂ�\n�������܂ꂽ���Ȃ������\,a15x3,0,0
#,ClearBalloon,nitori
#
#,SetFocus,nitori		,
#,ImageDef,nitori,�ɂƂ�_��1,0,0
#���Ȃ��������Ƃɂ���\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#��H\n���O����ʔ����z�A��Ă����\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,nitori		,
#,ImageDef,nitori,�ɂƂ�_��1,0,0
#�ʔ����z�H\n���̃l�b�V�[���̎����H\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,nitori		,
#,ImageDef,nitori,�ɂƂ�_�]1,0,0
#����͎����̂t�r�n�}�V����\n������񂶂�Ȃ���\,a15x3,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�f1,0,0
#�Ⴄ�Ⴄ\n�C���t���ċ��Ȃ��̂����H\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�]1,0,0
#���O�̌��ɂ͒������\n�������߂��Ă���\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,nitori		,
#,ImageDef,nitori,�ɂƂ�_�f1,0,0
#�ցH\n�ȁA���̏�k��\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#��k�Ȃ���\n�C���t���ċ��Ȃ��Ƃ�����\n���O����A��Ȃ���\,a15x3,0,0
#,ClearBalloon,mamizou
#
#
#,SetFocus,nitori		,
#,ImageDef,nitori,�ɂƂ�_��1,0,0
#���A����ȋ���������\n���ʂ���\n���ɂ��o�Ă��Ȃ������\,a15x3,0,0
#,ClearBalloon,nitori
#
#,Function,"StopBGM(500);",# BGM��~
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�f1,0,0
#�Ӂ[�����Ȃ����̂�\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�܂��ǂ������\n���O�ɜ߂��Ă���\R[�s�s�`��|����΂Ȃ�]��\n�����o���Ă�邼��\,a15x3,0,0
#,ClearBalloon,mamizou
#
#
#


#���҃t�F�C�X�P��
,th145_Hide,nitori,-1280,&
,th145_Hide,mamizou,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,mamizou,�}�~�]�E_�]1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�ɂƂ�t�F�C�X�\���J�n

,SetFocus,mamizou
���ĂƁA��������\,a11x2,0,0

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
,ImageDef,mamizou,�}�~�]�E_��1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�ɂƂ�t�F�C�X�\���J�n

,SetFocus,mamizou
�{��\,a11x2,0,0
,ClearBalloon,mamizou

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
