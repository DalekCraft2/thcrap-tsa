#========================================================================
#	�_�q�X�g�[���[
#	�X�e�[�W�P�@VS�z�s
#	�ꏊ�F���a���J�_
#	�X�e�[�W�^�C�g��
#	   �u�h���X�e�B�b�N�o�C�I�����X�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#�t�F�C�X�摜
,DefineObject,miko,-360,0,false
,DefineObject,futo,-360,0,true

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
,DefineObject,futo_label,1120,360,false

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,futo,�z�s_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280,&
,th145_Show,miko,-1280	,

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
���H\n�I�J���g�{�[�����񂱂��A\n�ł����H\,a15x3,0,0
,ClearBalloon,futo

#�Љ�J�b�g�\���@�z�s�́u�z�s_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,
,ImageDef,futo,�z�s_�f1,0,0
�ł����q�l�͂������ł�\n��R�W�߂Ă����ł̔��ł�\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,miko		,
,ImageDef,miko,�_�q_�{1,0,0
���̃{�[���Ɋւ���\n�V��������������\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
����đS�Ẵ{�[����\n�������\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�m���Ă̒ʂ�{�[���͎���\n��������Ƃ��o���Ȃ��̂�\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�o�傹��I\,a05x2,0,0
,ClearBalloon,miko





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,miko,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,miko,�_�q_��1,0,0
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,futo
�����ŕ�����H\n�ӂ[\,a11x2,0,0

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
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,miko,-1280	,&,#�_�q�t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�_�q�t�F�C�X�\���J�n

,SetFocus,futo
�V�������ĉ��ł����H\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
�ǂ����\n����I�Ƀ{�[���΂�܂��Ă���\n�z������񂾂�\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_�f1,0,0
���̎��܂łɃ{�[����]�炷��\n�ǂ���ʎ����N����悤��\,a15x3,0,0
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
