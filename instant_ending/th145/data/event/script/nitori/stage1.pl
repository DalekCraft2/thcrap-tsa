#========================================================================
#	�ɂƂ�X�g�[���[
#	�X�e�[�W1�@VS������
#	�ꏊ�F�_��
#	�X�e�[�W�^�C�g��
#	   �u���������č�������܂��I�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#�t�F�C�X�摜
,DefineObject,nitori,-360,0,false
,DefineObject,marisa,-360,0,true

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
,DefineObject,nitori_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#�����\��ݒ�
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,marisa,������_�G1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,marisa,-1280,&
,th145_Show,nitori,-1280	,

#�Љ�J�b�g�\���@�������́u������_�G1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�{�[���͂���񂩂ˁ[\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�I�J���g�{�[����\n�����Ă���̂�\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�]1,0,0
�͂������ł�\n���������Ƃ��܂���\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
��������\n���ĂȂ��̂��H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�������������n�j�ł���\n�ܘ_���������Ƃ��܂���\,a15x3,0,0
,ClearBalloon,nitori






,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,nitori,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,marisa,������_��1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#�ɂƂ�t�F�C�X�\���J�n

,SetFocus,marisa
������\n��������͖���������\,a11x2,0,0

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
,ImageDef,marisa,������_��1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#�ɂƂ�t�F�C�X�\���J�n



,SetFocus,nitori		,
����ł͔��承�i��\n������ɂȂ�܂�\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,marisa		,
�������A�����ɂȂ�Ȃ��\n�v���Ă��݂Ȃ�������\n�v��Ȃ�������Œ��x������\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���Ĉ��I\,c05x2,0,0
,ClearBalloon,marisa





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
