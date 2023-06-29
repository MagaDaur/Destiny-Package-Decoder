// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:41 2023
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[59];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = t3.Sample(s4_s, v3.xy).xyz;
  r0.z = r1.y + -r1.z;
  r0.z = cmp(r0.z < 0.00470588217);
  r0.z = r0.z ? r1.y : r1.z;
  r2.xy = ddx_coarse(r1.xy);
  r2.z = ddx_coarse(r0.z);
  r3.xy = ddy_coarse(r1.xy);
  r3.z = ddy_coarse(r0.z);
  r1.zw = r2.xx * r2.yz;
  r2.xy = r3.xx * r3.yz;
  r2.zw = cmp(abs(r2.xy) < abs(r1.zw));
  r1.zw = r2.zw ? r1.zw : r2.xy;
  r0.w = -0.5 + r1.x;
  r0.w = cmp(abs(r0.w) < 0.00470588217);
  r2.x = r1.x + r1.y;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.zw = cmp(r1.zw < float2(0,0));
  r1.z = r1.z ? r2.x : 0;
  r2.x = 1 + -r1.y;
  r1.z = r1.z ? r2.x : r1.x;
  r2.x = r1.z + r0.z;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.w = r1.w ? r2.x : 0;
  r2.x = 1 + -r0.z;
  r1.z = r1.w ? r2.x : r1.z;
  r0.w = r0.w ? r1.z : r1.x;
  r0.z = cmp(r0.z >= 0.5);
  if (r0.z != 0) {
    r1.xz = v3.xy * cb7[6].xy + cb7[6].zw;
    r0.z = t8.Sample(s1_s, r1.xz).w;
    r1.x = 4;
  } else {
    r1.y = cmp(r1.y >= 0.5);
    if (r1.y != 0) {
      r1.yz = v3.xy * cb7[3].xy + cb7[3].zw;
      r0.z = t6.Sample(s1_s, r1.yz).w;
      r1.x = 2;
    } else {
      r1.yz = v3.xy * cb7[0].xy + cb7[0].zw;
      r0.z = t4.Sample(s1_s, r1.yz).w;
      r1.x = 0;
    }
  }
  r0.w = cmp(r0.w >= 0.5);
  r1.y = (int)r1.x + 1;
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = (int)r0.w * 9;
  r1.xy = saturate(cb7[r0.w+11].zw);
  r2.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r3.xyzw = t2.Sample(s3_s, v3.xy).xzwy;
  r1.z = cmp(r3.z >= 0.156862751);
  r1.w = r1.z ? 1.000000 : 0;
  r4.xy = saturate(float2(7.96875,7.96875) * r3.yx);
  r2.w = saturate(cb0[4].y * r4.x + cb0[4].x);
  r1.z = r1.z ? 0 : 1;
  r5.xz = r2.ww * r1.zz;
  r4.xzw = saturate(cb7[r0.w+9].xyz * float3(4,4,4));
  r6.xyz = saturate(cb7[r0.w+9].xyz + float3(-0.25,-0.25,-0.25));
  r6.xyz = r2.xyz * r4.xzw + r6.xyz;
  r0.z = -r3.w + r0.z;
  r0.z = r1.x * r0.z + r3.w;
  r0.z = saturate(cb7[r0.w+13].y * r0.z + cb7[r0.w+13].x);
  r6.w = saturate(cb7[r0.w+13].w * r0.z + cb7[r0.w+13].z);
  r3.xyz = r2.xyz;
  r3.xyzw = r3.xyzw + -r6.xyzw;
  r3.xyzw = r1.zzzz * r3.xyzw + r6.xyzw;
  r2.x = r1.w * r1.y;
  r0.z = -r2.w * r1.z + 1;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r1.zw = float2(0,0);
  r0.xyw = t10.Load(r1.xyz).xyz;
  r0.xyw = r0.xyw * float3(2,2,2) + float3(-1,-1,-1);
  r1.x = dot(r0.xyw, r0.xyw);
  r1.x = sqrt(r1.x);
  r0.xyw = r0.xyw / r1.xxx;
  o0.xyz = r5.zzz * r3.xyz;
  r1.x = r3.w * 0.125 + 0.375;
  r0.xyw = saturate(r0.xyw * r1.xxx + float3(0.5,0.5,0.5));
  o1.xyz = r0.xyw * r5.xzz;
  r2.y = r5.z * r4.y;
  r2.z = 0;
  r5.y = 0.5;
  o2.xyz = r2.xyz * r5.xyz;
  o0.w = r0.z;
  o1.w = r0.z;
  o2.w = r0.z;
  return;
}