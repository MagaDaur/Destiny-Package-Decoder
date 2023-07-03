// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:26 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[2].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.z;
    r0.z = (uint)r0.z;
    r0.w = (int)r0.z ^ 61;
    r0.z = (uint)r0.z >> 16;
    r0.z = (int)r0.z ^ (int)r0.w;
    r0.z = (int)r0.z * 9;
    r0.w = (uint)r0.z >> 4;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = (int)r0.z * 0x27d4eb2d;
    r0.w = (uint)r0.z >> 15;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r2.z = 2.32830644e-010 * r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r0.w = r0.w * 2.32830644e-010 + r2.z;
    r3.z = 0.5 * r0.w;
    r4.xy = r0.ww * float2(0.411428511,-13.3842888) + float2(-0.196070999,65.2928772);
    r4.zw = r0.ww * float2(0.125,-25.1400146) + float2(0,12.7557182);
    r3.z = r3.z * r3.z;
    r3.zw = r4.xy * r3.zz + r4.zw;
    r4.xyz = cmp(r0.www >= float3(0,1.33333397,2));
    r4.xyw = r4.xyz ? float3(1,1,1) : 0;
    r4.xyz = r4.xyw + r4.yww;
    r4.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) * r4.xyz;
    r4.xyz = frac(r4.xyz);
    r3.zw = r4.xy * r3.zw;
    r3.zw = float2(2,2) * r3.zw;
    r0.w = r3.z + r3.w;
    r0.w = r4.z * 2 + r0.w;
    r0.w = saturate(r4.w * 1 + r0.w);
    r0.w = r0.w * 74 + 6;
    r2.w = 2.32830644e-010 * r3.x;
    r3.xz = r3.xx * float2(4.65661287e-010,-9.76386957e-011) + float2(-3,1.41935503);
    r3.z = r3.z * r2.w;
    r3.x = r3.x * r2.w + 1;
    r3.x = max(0, r3.x);
    r3.x = r3.x * 0.199999988 + 0.800000012;
    r0.w = r3.x * r0.w;
    r3.x = min(1, r3.z);
    r4.xyz = r3.yyy * float3(-4.39620784e-009,3.32496142e-010,-2.42307792e-008) + float3(5.85328102,-2.81167603,284.020203);
    r5.x = 2.32830644e-010 * r3.y;
    r6.xyz = r3.yyy * float3(2.32830644e-010,4.60812832e-010,-5.93320379e-008) + float3(0,-0.0115449997,75.8793793);
    r4.xyz = r4.xyz * r5.xxx + r6.xyz;
    r6.xyzw = cmp(r3.yyyy >= float4(0,887628032,3.46460826e+009,4.2949673e+009));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r3.yzw = r6.xyz + r6.yzw;
    r3.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r3.yzw;
    r3.xyzw = float4(0.0174529999,0.5,0.5,0.5) * r3.xyzw;
    r3.yzw = frac(r3.yzw);
    r3.yzw = r3.yzw * r4.xyz;
    r3.yz = r3.yz + r3.yz;
    r3.y = r3.y + r3.z;
    r3.y = saturate(r3.w * 2 + r3.y);
    r1.w = r3.y * 3 + 2;
    r3.y = cb10[1].x + 0.25;
    r3.z = cb10[0].x + 0.25;
    r3.yz = (int2)r3.yz;
    r4.xy = cb0[5].xy + r2.yz;
    r4.xy = r4.xy * float2(18.9452477,6.99969196) + float2(3.25,0.133332998);
    r4.xy = floor(r4.xy);
    r3.w = dot(r4.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.w = frac(r3.w);
    r3.w = r3.w * r3.w;
    r3.w = 251 * r3.w;
    r3.w = frac(r3.w);
    r3.w = r3.w * 0.119999997 + -0.0599999987;
    r3.w = 3.1415925 * r3.w;
    sincos(r3.w, r4.x, r6.x);
    r7.xyz = float3(0,1,0) * r4.xxx;
    r4.xzw = cb9[r3.z+32].yzx * cb9[r3.z+0].zxy;
    r8.xyz = cb9[r3.z+0].yzx * cb9[r3.z+32].zxy + -r4.xzw;
    r3.w = dot(cb9[r3.z+0].xyz, cb9[r3.z+32].xyz);
    r8.w = -r3.w;
    r9.xyz = cb9[r3.z+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r3.z+32].wwww * r9.xyzw + r8.xyzw;
    r4.xzw = -cb9[r3.z+32].zxy * r8.yzx;
    r4.xzw = -cb9[r3.z+32].yzx * r8.zxy + -r4.xzw;
    r4.xzw = cb9[r3.z+32].www * r8.xyz + r4.xzw;
    r4.xzw = r8.www * -cb9[r3.z+32].xyz + r4.xzw;
    r3.w = dot(r4.yyyy, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.w = frac(r3.w);
    r3.w = r3.w * r3.w;
    r3.w = 251 * r3.w;
    r3.w = frac(r3.w);
    r3.w = r3.w * 0.119999997 + -0.0599999987;
    r3.w = 3.1415925 * r3.w;
    sincos(r3.w, r8.x, r9.x);
    r8.xyz = float3(1,0,0) * r8.xxx;
    r6.yzw = -cb9[r3.z+32].zxy * cb9[r3.y+32].yzx;
    r6.yzw = -cb9[r3.z+32].yzx * cb9[r3.y+32].zxy + -r6.yzw;
    r3.w = dot(-cb9[r3.z+32].xyz, cb9[r3.y+32].xyz);
    r10.w = -r3.w;
    r10.xyz = cb9[r3.z+32].www * cb9[r3.y+32].xyz + r6.yzw;
    r11.xyzw = cb9[r3.z+32].xyzw * float4(-1,-1,-1,1);
    r10.xyzw = cb9[r3.y+32].wwww * r11.xyzw + r10.xyzw;
    r12.xyzw = r10.zxyy * r7.yzzy;
    r6.yzw = -r7.zzy * r10.yzx + r12.xyz;
    r12.w = -r12.w;
    r12.xyz = r6.xxx * r10.xyz + r6.yzw;
    r7.w = r6.x;
    r10.xyzw = r10.wwww * r7.xyzw + r12.xyzw;
    r6.yzw = cb9[r3.z+32].zxy * r10.yzx;
    r6.yzw = cb9[r3.z+32].yzx * r10.zxy + -r6.yzw;
    r3.w = dot(cb9[r3.z+32].xyz, r10.xyz);
    r12.w = -r3.w;
    r12.xyz = cb9[r3.z+32].www * r10.xyz + r6.yzw;
    r10.xyzw = r10.wwww * cb9[r3.z+32].xyzw + r12.xyzw;
    r6.yzw = -cb9[r3.z+32].zxy * r10.yzx;
    r6.yzw = -cb9[r3.z+32].yzx * r10.zxy + -r6.yzw;
    r3.w = dot(-cb9[r3.z+32].xyz, r10.xyz);
    r12.w = -r3.w;
    r12.xyz = cb9[r3.z+32].www * r10.xyz + r6.yzw;
    r10.xyzw = r10.wwww * r11.xyzw + r12.xyzw;
    r11.xyzw = r10.zxyx * r8.zzxx;
    r6.yzw = -r8.zxz * r10.yzx + r11.xyz;
    r11.w = -r11.w;
    r11.xyz = r9.xxx * r10.xyz + r6.yzw;
    r8.w = r9.x;
    r10.xyzw = r10.wwww * r8.xyzw + r11.xyzw;
    r6.yzw = cb9[r3.z+32].zxy * r10.yzx;
    r6.yzw = cb9[r3.z+32].yzx * r10.zxy + -r6.yzw;
    r3.w = dot(cb9[r3.z+32].xyz, r10.xyz);
    r11.w = -r3.w;
    r11.xyz = cb9[r3.z+32].www * r10.xyz + r6.yzw;
    r10.xyzw = r10.wwww * cb9[r3.z+32].xyzw + r11.xyzw;
    r6.yzw = cb9[r3.z+32].yzx * cb9[r3.y+0].zxy;
    r11.xyz = cb9[r3.y+0].yzx * cb9[r3.z+32].zxy + -r6.yzw;
    r3.w = dot(cb9[r3.y+0].xyz, cb9[r3.z+32].xyz);
    r11.w = -r3.w;
    r12.xyz = cb9[r3.y+0].xyz;
    r12.w = 0;
    r11.xyzw = cb9[r3.z+32].wwww * r12.xyzw + r11.xyzw;
    r6.yzw = -cb9[r3.z+32].zxy * r11.yzx;
    r6.yzw = -cb9[r3.z+32].yzx * r11.zxy + -r6.yzw;
    r6.yzw = cb9[r3.z+32].www * r11.xyz + r6.yzw;
    r6.yzw = r11.www * -cb9[r3.z+32].xyz + r6.yzw;
    r6.yzw = r6.yzw + -r4.xzw;
    r11.xyzw = r6.zwyz * -r7.zzyy;
    r12.xyz = -r6.wyz * -r7.yzz + r11.xyz;
    r12.w = -r11.w;
    r11.xyz = r6.xxx * r6.yzw;
    r11.w = 0;
    r11.xyzw = r12.xyzw + r11.xyzw;
    r6.yzw = r11.yzx * r7.zzy;
    r6.yzw = r7.yzz * r11.zxy + -r6.yzw;
    r6.xyz = r6.xxx * r11.xyz + r6.yzw;
    r6.xyz = r11.www * r7.zyz + r6.xyz;
    r7.xyz = -cb9[r3.z+32].yzx * r6.zxy;
    r7.xyz = r6.yzx * -cb9[r3.z+32].zxy + -r7.xyz;
    r3.y = dot(r6.xyz, -cb9[r3.z+32].xyz);
    r7.w = -r3.y;
    r6.xyz = cb9[r3.z+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = cb9[r3.z+32].zxy * r6.yzx;
    r7.xyz = cb9[r3.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r3.z+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * cb9[r3.z+32].xyz + r6.xyz;
    r6.xyz = cb9[r3.z+0].xyz + r6.xyz;
    r7.xyz = cb9[r3.z+32].yzx * r6.zxy;
    r7.xyz = r6.yzx * cb9[r3.z+32].zxy + -r7.xyz;
    r3.y = dot(r6.xyz, cb9[r3.z+32].xyz);
    r7.w = -r3.y;
    r6.xyz = cb9[r3.z+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r3.z+32].zxy * r6.yzx;
    r7.xyz = -cb9[r3.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r3.z+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r3.z+32].xyz + r6.xyz;
    r4.xyz = r6.xyz + -r4.xzw;
    r6.xyzw = r4.yzxx * -r8.zxzx;
    r7.xyz = -r4.zxy * -r8.zzx + r6.xyz;
    r7.w = -r6.w;
    r4.xyz = r9.xxx * r4.xyz;
    r4.w = 0;
    r4.xyzw = r7.xyzw + r4.xyzw;
    r6.xyz = r8.zxz * r4.yzx;
    r6.xyz = r8.zzx * r4.zxy + -r6.xyz;
    r4.xyz = r9.xxx * r4.xyz + r6.xyz;
    r4.xyz = r4.www * r8.xzz + r4.xyz;
    r6.xyz = -cb9[r3.z+32].yzx * r4.zxy;
    r6.xyz = r4.yzx * -cb9[r3.z+32].zxy + -r6.xyz;
    r3.y = dot(r4.xyz, -cb9[r3.z+32].xyz);
    r6.w = -r3.y;
    r4.xyz = cb9[r3.z+32].www * r4.xyz;
    r4.w = 0;
    r4.xyzw = r6.xyzw + r4.xyzw;
    r6.xyz = cb9[r3.z+32].zxy * r4.yzx;
    r6.xyz = cb9[r3.z+32].yzx * r4.zxy + -r6.xyz;
    r4.xyz = cb9[r3.z+32].www * r4.xyz + r6.xyz;
    r4.xyz = r4.www * cb9[r3.z+32].xyz + r4.xyz;
    r3.yzw = cb9[r3.z+0].xyz + r4.xyz;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r4.x = 1.46291812e-009 * r4.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r3.x;
    r0.z = 2.32830644e-010 * r0.z;
    sincos(r0.z, r3.x, r6.x);
    sincos(r4.x, r4.x, r7.x);
    r6.y = r4.x * r3.x;
    r6.z = r7.x * r3.x;
    r4.xyz = r6.xyz * r0.www;
    r6.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r6.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.z;
    r7.xyz = cb9[r0.y+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.y+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.y+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r0.y+32].xyz + r6.xyz;
    r7.xyz = -cb9[r0.y+32].zxy * r10.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r10.zxy + -r7.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r10.xyz);
    r8.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * r10.xyz + r7.xyz;
    r7.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = r10.wwww * r7.xyzw + r8.xyzw;
    r8.xyz = cb9[r0.y+32].yzx * r3.wyz;
    r8.xyz = r3.zwy * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(r3.yzw, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.yzw;
    r3.w = 0;
    r3.xyzw = r8.xyzw + r3.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r8.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r8.xyz;
    r0.yzw = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r3.xyz = -r6.xyz + r0.yzw;
    r0.yzw = -r7.yzx * r4.zxy;
    r6.xyz = r4.yzx * -r7.zxy + -r0.yzw;
    r0.y = dot(r4.xyz, -r7.xyz);
    r6.w = -r0.y;
    r4.xyz = r7.www * r4.xyz;
    r4.w = 0;
    r4.xyzw = r6.xyzw + r4.xyzw;
    r0.yzw = r7.zxy * r4.yzx;
    r0.yzw = r7.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r7.www * r4.xyz + r0.yzw;
    r4.xyz = r4.www * r7.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r4.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r3.xyzw
    r1.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r2.xyzw
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r5.xwww
  }
  return;
}