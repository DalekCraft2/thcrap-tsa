#========================================================================
#	��փX�g�[���[
#	�X�e�[�W�P�@VS�z�s
#	�X�e�[�W�^�C�g��
#	   �u�V���s�s�`�����v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#�t�F�C�X�摜
,DefineObject,ichirin,-360,0,false
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

,Function,"GameStory_PlayBGM(703);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,ichirin_label,50,360,false
,DefineObject,futo_label,1120,360,false

#�����\��ݒ�
,ImageDef,ichirin,���_�]1,0,0
,ImageDef,futo,�z�s_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280	,&
,th145_Show,ichirin,-1280,

,SetFocus,ichirin		,#�������L�������w��
�ւ��ց[��\n�{�[�������Ă�񂾂�[�H\n��[���[���[��[\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_�]1,0,0
��������������{�[����\n�����Ă���ȁH\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_��1,0,0
�ǂ����낤\n�󂯂ė����H\,a11x2,0,0
,ClearBalloon,futo

#�Љ�J�b�g�\���@�z�s�́u�z�s_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_��1,0,0
�N��\R[�s�s�`��|�I�J���g]�͂��e����\n�|��k���邪�ǂ��I\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�ՂՂ��A���e����[�H\n�ӂ���[�I\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
����������R�ˁI\,c11x2,0,0
,ClearBalloon,ichirin






,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,ichirin,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,futo,�z�s_�f1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,futo,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,futo
���e����c�c\n�\���n�C�J�����Ǝv���Ƃ�����\,a15x3,0,0

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
,ImageDef,ichirin,���_��1,0,0
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,futo,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,ichirin
\R[�s�s�`��|�I�J���g]�����ĐV��������\n�����Ɍ��܂��Ă�ł���\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,futo
����\n����͏��������낤��\,c11x2,0,0
,ClearBalloon,futo




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
