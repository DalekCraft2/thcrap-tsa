#========================================================================
#	�_�q�X�g�[���[
#	�X�e�[�W4�@VS�j����
#	�ꏊ�F�P�j��
#	�X�e�[�W�^�C�g��
#	   �u��ȉ\�͒N���ׂɁv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"

#�t�F�C�X�摜
,DefineObject,miko,-360,0,false
,DefineObject,sinmyoumaru,-360,0,true

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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,miko_label,50,360,false
,DefineObject,sinmyoumaru_label,1120,360,false

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,Function,GameStory_1P_In_Side(),
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,sinmyoumaru,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
��[���~�܂ꂢ�I\,b11x2,0,0
,ClearBalloon,sinmyoumaru

#�Љ�J�b�g�\���@�j���ۂ́u�j����_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,sinmyoumaru
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,th145_Show,miko,-1280	,

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_�]1,0,0
�����̂��O�[�I\n�{�[�����R�����Ă���ȁH\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
�N������R�W�߂�܂�\n�l�q�����Đ���������\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,miko		,
,ImageDef,miko,�_�q_�f1,0,0
���O�c�c\n�������Č����Ƃ���������\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_�{1,0,0
�������������\n�n���ɂ���Ȃ�[�H\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
���������Ă��ւ�\n�������l����\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,Function,"StopBGM(2000);",# BGM��~

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�ق�\n\R[���F��|�X�N�i�q�R�i]�̌����p���҂Ƃ�����\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]2,0,0
����Ȏ҂����p����\n�s�s�`���Ƃ͈��\,a11x2,0,0
,ClearBalloon,miko

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
���ꂩ�炽���Ղ�\n����킹�Ă���[�I\,a11x2,0,0
,ClearBalloon,sinmyoumaru


,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
��������\n�������ƌ��������ȁI\,b11x2,0,0
,ClearBalloon,sinmyoumaru




#���҃t�F�C�X�P��
,th145_Hide,miko,-1280,&
,th145_Hide,sinmyoumaru,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,sinmyoumaru,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,sinmyoumaru
��[����ʃQ�b�g���I\n����ő傫���Ȃ�邼�[\,a11x2,0,0

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
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,sinmyoumaru,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,sinmyoumaru		,#�������L�������w��
��������\n���������Ń{�[��������\n�W�܂肻���������̂�\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,#�������L�������w��
���񂽂��W�߂�����\n���ɂ��Ȃ�Ȃ��ł���H\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,miko		,
,ImageDef,miko,�_�q_�f1,0,0
�{�[�����W�߂ĉ�������\n���肾�����́H\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,sinmyoumaru		,#�������L�������w��
���W�߂�Α傫���Ȃ�����\n�݂�Ȍ����Ă�����\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,miko		,
,ImageDef,miko,�_�q_�f1,0,0
��̉������炻��ȉ\��\n�������񂾂낤\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�܂�����\n�c��͂��ƈ������\n���炭����őS���̔�\,a15x3,0,0
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
