#========================================================================
#	�ؐ�X�g�[���[
#	�X�e�[�W2�@VS�z�s
#	�ꏊ�F���a���J�_
#	�X�e�[�W�^�C�g��
#	   �u���Ԃ��e���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#�t�F�C�X�摜
,DefineObject,kasen,-360,0,false
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
,DefineObject,kasen_label,50,360,false
,DefineObject,futo_label,1120,360,false

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,futo,�z�s_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,kasen,-1280	,#�z�s�t�F�C�X�\���J�n


,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
�Q�������\n�������������ɂ����Ȃ�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
�����Ɩ������͍Ă�\n�{�[���W�߂��n�߂Ă��锤������\,a15x3,0,0
,ClearBalloon,kasen

,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_��1,0,0
,th145_Show,futo,-1280	,#�z�s�t�F�C�X�\���J�n
����A����͂����\n�R�̐�l�l�ł���\,a11x2,0,0
,ClearBalloon,futo

#�Љ�J�b�g�\���@�z�s�́u�z�s_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_�]1,0,0
�������p�ł��H\,a11x2,0,0
,ClearBalloon,futo


,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�l�{�����łˁc�c��H\n�M������I�J���g�I�[�����H\,a15x3,0,0
,ClearBalloon,kasen


,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
�ŋ߁A�������k���ۂ�\n���̂ɐG�ꂽ�肵�ĂȂ��H\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_��1,0,0
���ɖ�����\n�ŋ߂��M�𐔂���̂����ۂ�\n�Ȃ��ĂĂ���ǂ��낶�ᖳ�����\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_��1,0,0
���x�����Ă��ꖇ����Ȃ��̂�\n�㖇�����Ȃ�������Ȃ�\,c15x3,0,0
,ClearBalloon,futo

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
���ꂾ\,a05x2,0,0
,ClearBalloon,kasen






,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,kasen,-1280,&
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
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,futo,�z�s_�]1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,futo
����ς�ꖇ����Ȃ����[\,a15x3,0,0

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
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,kasen
���e����Ƃ�\n����܂��ÓT�I��\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,futo
������H\n��̉����N�����̂��H\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
�C�ɂ��Ȃ��ėǂ���\n����͎��̎d��������\,a11x2,0,0
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
